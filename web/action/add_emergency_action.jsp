<%-- 
    Document   : add_emergency_action
    Created on : 24 Dec, 2013, 4:05:38 PM
    Author     : IVS PC5
--%>

<%@page import="DB.DBConnection"%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    String name=request.getParameter("name");
    String dep=request.getParameter("department");
    int hos_id=Integer.parseInt(session.getAttribute("hos_id").toString());
    String sql="insert into emergency_team(doctor,doctor_id,department,hospital_id) values('"+name+"','"+id+"','"+dep+"','"+hos_id+"')";
    DB.DBConnection dbc=new DBConnection();
    dbc.putData(sql);
    response.sendRedirect("../hos_admin_home.jsp");
%>