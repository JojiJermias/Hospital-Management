<%-- 
    Document   : hos_delete_action
    Created on : 7 Jan, 2014, 5:11:56 PM
    Author     : IVS PC5
--%>

<%@page import="DB.DBConnection"%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    ////JOptionPane.showMessageDialog(null, id);
    String sql="delete from hospital where id='"+id+"'";
    String sql1="delete from login where hospital_id='"+id+"'";
    DBConnection dbc=new DBConnection();
    dbc.putData(sql);
    dbc.putData(sql1);
    response.sendRedirect("../view_hospital.jsp");
%>