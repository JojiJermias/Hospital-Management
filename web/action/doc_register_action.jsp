<%-- 
    Document   : doc_register_action
    Created on : Jun 16, 2016, 4:25:39 PM
    Author     : IVS PC5
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
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
            String name=request.getParameter("name");
            String dep=request.getParameter("Department");
            String qual=request.getParameter("Qualification");
            String exp=request.getParameter("Experience");
            String mob=request.getParameter("mobilenumber");
            String email=request.getParameter("email");
            DBConnection dbc=new DBConnection();
            String pass=name+ran+mob.substring(3,7);
             String s="select * from doctor where mobile='"+mob+"' or email='"+email+"'";
           r=dbc.getData(s);
           if(r.next()){
               JOptionPane.showMessageDialog(null, "Already exists","Error",JOptionPane.INFORMATION_MESSAGE);
           }else{

           String sql="insert into doctor(name,department,qualification,experience,email,mobile,hospital_id) values ('"+name+"','"+dep+"','"+qual+"','"+exp+"','"+email+"','"+mob+"','"+hos_id+"')";
           int i=dbc.putData(sql);
           
           if(i>0){
              String ssq="select id from doctor where mobile='"+mob+"' or email='"+email+"'";
              rs=dbc.getData(ssq);
              int id=0;
              while(rs.next()){
                  id =rs.getInt("id");
              }
            
               String sql1="insert into login(username,password,user_type,status,hospital_id,user_id) values ('"+name+"','"+pass+"','doctor','0','"+hos_id+"','"+id+"')";
                dbc.putData(sql1);
               String result=Mail.Sendmail.sendMail(email,"Login Details", "You have successfully registered\n Your Username is "+name+" \n Your Password is "+pass+"");
               
             
           } }
           response.sendRedirect("../hos_admin_home.jsp");
            
        %>
    </body>
</html>
