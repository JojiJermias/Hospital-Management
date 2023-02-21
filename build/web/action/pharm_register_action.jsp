<%-- 
    Document   : pharm_register_action
    Created on : Jun 16, 2016, 4:26:45 PM
    Author     : IVS PC5
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="DB.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
             ResultSet rs=null,r=null;
          
           int ran=(int)(Math.random()*100);
           ran+=100;
           int hos_id=Integer.parseInt(session.getAttribute("hos_id").toString());
            String name=request.getParameter("Name");
            String dep=request.getParameter("location");
            String qual=request.getParameter("place");
            String exp=request.getParameter("post");
             String dist=request.getParameter("dist");
            String mob=request.getParameter("Phone No");
            String email=request.getParameter("Email");
            DBConnection dbc=new DBConnection();
            String pass=name+ran+mob.substring(3,7);
             String s="select * from pharmacist where mobile='"+mob+"' or email='"+email+"'";
           r=dbc.getData(s);
           if(r.next()){
               JOptionPane.showMessageDialog(null, "Already exists","Error",JOptionPane.INFORMATION_MESSAGE);
           }else{

           String sql="insert into pharmacist(name,house,place,post_office,district,mobile,email,hospital_id) values ('"+name+"','"+dep+"','"+qual+"','"+exp+"','"+dist+"','"+mob+"','"+email+"','"+hos_id+"')";
           int i=dbc.putData(sql);
           
           if(i>0){
              String sq1="select id from pharmacist where mobile='"+mob+"' and email='"+email+"'";
              rs=dbc.getData(sq1);
              int id=0;
              while(rs.next()){
                  id=rs.getInt("id");
              }
              
               String sql1="insert into login(username,password,user_type,status,hospital_id,user_id) values ('"+name+"','"+pass+"','pharmacist','0','"+hos_id+"','"+id+"')";
               String result=Mail.Sendmail.sendMail(email,"Login Details", "You have successfully registered\n Your Username is "+name+" \n Your Password is "+pass+"");
               
               dbc.putData(sql1);
           } }
           response.sendRedirect("../hos_admin_home.jsp");
            
        %>
    </body>
</html>
