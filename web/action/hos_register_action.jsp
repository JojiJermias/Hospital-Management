<%-- 
    Document   : hos_register_action
    Created on : 11 Dec, 2013, 12:09:26 PM
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
           ResultSet rs=null,r=null,ra=null;
           int id=0;
           int ran=(int)(Math.random()*100);
           ran+=100;
          
           String hosname=request.getParameter("Name");
           String location=request.getParameter("location");
           String admin=request.getParameter("admin");
           String email=request.getParameter("Email");
           String phone=request.getParameter("Phone No");
            String pass=admin+ran;
           ////JOptionPane.showMessageDialog(null, hosname+" "+location+" "+admin+" "+email+" "+phone);
            
           DB.DBConnection dbc=new DBConnection();
           String s="select * from hospital where hospital_name='"+hosname+"'";
           r=dbc.getData(s);
           if(r.next()){
               JOptionPane.showMessageDialog(null, "Already exists","Error",JOptionPane.INFORMATION_MESSAGE);
           }else{

           String sql="insert into hospital(hospital_name,location,admin,mail_id,contact) values ('"+hosname+"','"+location+"','"+admin+"','"+email+"','"+phone+"')";
           int i=dbc.putData(sql);
           
           if(i>0){
               String sq="select id from hospital where hospital_name='"+hosname+"'";
               rs=dbc.getData(sq);
               while(rs.next()){
                   id=rs.getInt("id");
               }
               String sql2="insert into admin (name,hospital_id,hospital_name,email) values('"+admin+"','"+id+"','"+hosname+"','"+email+"')";
               dbc.putData(sql2);
               String ss="select id from admin where hospital_name='"+hosname+"'";
               ra=dbc.getData(ss);
                int idd=0;
               while(ra.next()){
                   idd=ra.getInt("id");
               }
               
               String sql1="insert into login(username,password,user_type,status,hospital_id,user_id) values ('"+admin+"','"+pass+"','admin','0','"+id+"','"+idd+"')";
          String result=Mail.Sendmail.sendMail(email,"Login Details", "You have successfully registered\n Your Username is "+admin+" \n Your Password is "+pass+"");
               dbc.putData(sql1);
           } }
           response.sendRedirect("../cloud_admin_home.jsp");
       %>
    </body>
</html>
