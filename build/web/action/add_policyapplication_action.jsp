<%-- 
    Document   : add_emergency_action
    Created on : 24 Dec, 2013, 4:05:38 PM
    Author     : IVS PC5
--%>

<%@page import="DB.DBConnection"%>
<%
    DB.DBConnection dbc = new DBConnection();
    if(request.getParameter("tid").equals("1")){
        String sql="insert into policyapplication(patientid,appid,pname,status) values("+request.getParameter("pid")+","+request.getParameter("aid")+",'"+request.getParameter("pname")+"',0)";    
        dbc.putData(sql);
    } else {
        String sql="update policyapplication set status = "+request.getParameter("tid")+" where patientid = "+request.getParameter("pid")+" and aapid = "+request.getParameter("aid");    
        dbc.putData(sql);
    }
%>