<%-- 
    Document   : view_patient_personal
    Created on : 26 Dec, 2013, 9:56:22 AM
    Author     : IVS PC5
--%>



<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<%
    String filename="";
    String key="";
    int user_id=Integer.parseInt(session.getAttribute("user_id").toString());
    ////JOptionPane.showMessageDialog(null, "aaaa"+user_id);
    String sql="select * from personal_file where patient_id='"+user_id+"'";
    DBConnection dbc=new DBConnection();
    ResultSet rs=dbc.getData(sql);
    while(rs.next()){
        filename=rs.getString("filename");
        key=rs.getString("kee");
    }
    if(filename.length()>2){
    session.setAttribute("filename",filename);
    session.setAttribute("kee",key);
    
    response.sendRedirect("file_down_action.jsp");
    }else{
       // //JOptionPane.showMessageDialog(null, "No report");
         response.sendRedirect("../patient_home.jsp");
    }
    
%>