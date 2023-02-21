<%-- 
    Document   : delete_doc
    Created on : 24 Dec, 2013, 1:53:49 PM
    Author     : IVS PC5
--%>


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
           int id=Integer.parseInt(request.getParameter("id"));
           DB.DBConnection dbc=new DBConnection();
           String sql="delete from doctor where id='"+id+"'";
           String sql1="delete from login where user_id='"+id+"'";
           String sq="select * from patients where cur_doc_id='"+id+"'";
           ResultSet rs=dbc.getData(sq);
           if(!rs.next()){
               dbc.putData(sql);
               dbc.putData(sql1);
               session.setAttribute("Errmsg", "");
           }else{
               //JOptionPane.showMessageDialog(null,"Sorry......");
               session.setAttribute("Errmsg", "Sorry.... ");
           }
           
           response.sendRedirect("../doc_management.jsp");
       %>
    </body>
</html>
