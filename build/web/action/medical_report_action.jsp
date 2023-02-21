<%-- 
    Document   : medical_report_action
    Created on : 19 Dec, 2013, 2:07:57 PM
    Author     : IVS PC5
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<%@page import="Privacy.vb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           String pname="";
           int count=0;
            String report=request.getParameter("report");
            String medicine=request.getParameter("medicine");
            //JOptionPane.showMessageDialog(null, report+" "+medicine);
             int hos_id=Integer.parseInt(session.getAttribute("hos_id").toString());
            int pid=Integer.parseInt(session.getAttribute("pat_id").toString());
            String ss="select name from patients where id='"+pid+"'";
            DB.DBConnection dbc=new DBConnection(); 
            ResultSet rs=dbc.getData(ss);
            while(rs.next()){
                pname=rs.getString("name");
            }
            String doc=session.getAttribute("username").toString();
            int doc_id=Integer.parseInt(session.getAttribute("user_id").toString());
            String ssq="select count(*) from medical_file where patient_id='"+pid+"'";
            ResultSet rss=dbc.getData(ssq);
            while(rss.next()){
                count=rss.getInt(1);
                //JOptionPane.showMessageDialog(null, count);
            }
            int num=count+1; 
              String filename="M"+pid+"R"+hos_id+count;
              String filename1="M"+pid+"D"+hos_id+count;
            String key1="DOFRINEM"+pid+hos_id;
            String key2="DOPHEM"+pid+hos_id;
            if(key1.length()>12){
            key1=key1.substring(0,12);
        } if(key2.length()>12){
            key2=key2.substring(0,12);
        }
        key1=Privacy.visionpack.keys(key1);
        key2=Privacy.visionpack.keys(key2);
        String re=vb.encrypt(report, key1);
        String med=vb.encrypt(medicine, key2);
        session.setAttribute("medical",re);
        session.setAttribute("medicine",med);
        session.setAttribute("filename_med", filename);
        session.setAttribute("filename_mdcn",filename1);
        String date=DateTime.DateTime.getCurrentDate();       
        String time=DateTime.DateTime.getCurrentTime();    
        String sq="insert into medical_file(patient_name,patient_id,filename,hospital_id,doctor,doctor_id,time,date,kee,number) values('"+pname+"','"+pid+"','"+filename+"','"+hos_id+"','"+doc+"','"+doc_id+"','"+time+"','"+date+"','"+key1+"','"+num+"')";
        String sqq="insert into emergency_file(patient_name,patient_id,hospital_id,doctor,time,date,report,medicine) values('"+pname+"','"+pid+"','"+hos_id+"','"+doc+"','"+time+"','"+date+"','"+report+"','"+medicine+"')";
        String sq1="insert into medicine_file(patient_name,patient_id,filename,hospital_id,doctor,doctor_id,time,date,kee,number) values('"+pname+"','"+pid+"','"+filename1+"','"+hos_id+"','"+doc+"','"+doc_id+"','"+time+"','"+date+"','"+key2+"','"+num+"')";
        dbc.putData(sq);
        dbc.putData(sq1);
        dbc.putData(sqq);
        //JOptionPane.showMessageDialog(null, key1+"  "+key2);
         //JOptionPane.showMessageDialog(null, re);
          //JOptionPane.showMessageDialog(null,med);
          //JOptionPane.showMessageDialog(null,filename+"  "+filename1);
          
          response.sendRedirect("medreport_upload_action.jsp");

        %>
    </body>
</html>
