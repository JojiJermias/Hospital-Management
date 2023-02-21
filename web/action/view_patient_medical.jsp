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
     String doc_name="";
     int num=0;
                int doc_id=0;
                int hosp_id=0;
                String time="";
                String date="";
    int user_id=Integer.parseInt(session.getAttribute("user_id").toString());
    String sql="select * from medical_file where patient_id='"+user_id+"'";
    DBConnection dbc=new DBConnection();
    ResultSet rs=dbc.getData(sql);
    while(rs.next()){
        filename=rs.getString("filename");
        key=rs.getString("kee");
         hosp_id=rs.getInt("hospital_id");
                   doc_name=rs.getString("doctor");
                   doc_id=rs.getInt("doctor_id");
                   time=rs.getTime("time").toString();
                   date=rs.getString("date");
                   num=rs.getInt("number");
    }if(filename.length()>2){
        //JOptionPane.showMessageDialog(null, filename);
        session.setAttribute("filename", filename);
        session.setAttribute("kee", key);
        session.setAttribute("hosp_id", hosp_id);
        session.setAttribute("re_doc", doc_name);
        session.setAttribute("re_doc_id", doc_id);
        session.setAttribute("time", time);
        session.setAttribute("date", date);
        session.setAttribute("number", num);
        response.sendRedirect("medical_down_action.jsp");
    }else{
        //JOptionPane.showMessageDialog(null, "No Medical report");
        response.sendRedirect("../patient_home.jsp");
    }
       
    
%>