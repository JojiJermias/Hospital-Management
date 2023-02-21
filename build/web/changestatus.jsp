<%-- 
    Document   : changestatus
    Created on : Jun 17, 2016, 11:23:05 AM
    Author     : IVS PC5
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<%
    int num=0;
    String id=session.getAttribute("pat_id").toString();
    DB.DBConnection db=new DBConnection();
//   ResultSet rs= db.getData("select num from patients where id='"+id+"'");
//    while(rs.next())
//    {
//        num=rs.getInt("num");
//    }
//    num++;
    String sql="update patients set status='discharge' where id='"+id+"'";
    db.putData(sql);
    response.sendRedirect("view_pat_2.jsp");
%>