<%-- 
    Document   : nam
    Created on : Jun 17, 2016, 11:32:38 AM
    Author     : IVS PC5
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>
           <%
      String des="";                                                          
    String dep=request.getParameter("q");
    ////JOptionPane.showMessageDialog(null, dep);
   String sql="Select department from doctor where name='"+dep+"'";
   DBConnection db=new DBConnection();
    ResultSet rs=null;
   rs=db.getData(sql);
   while(rs.next()){
   des=rs.getString("department");
 //  //JOptionPane.showMessageDialog(null, des);
   %>
   <select>
       <option><%=des%></option>
   </select>
   <%}%> 
     </body>
</html>
