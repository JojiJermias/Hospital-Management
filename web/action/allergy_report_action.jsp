<%-- 
    Document   : allergy_report_action
    Created on : 7 May, 2014, 11:43:44 AM
    Author     : IVS PC5
--%>

<%@page import="Privacy.vb"%>
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
           String pname="";
           int count=0;
            String report=request.getParameter("allreport");
            String allgmedicine=request.getParameter("medicine");
            String allergymedicine=report+"\n"+allgmedicine;
            ////JOptionPane.showMessageDialog(null, report+" "+allergymedicine);
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
//            String ssq="select count(*) from medical_file where patient_id='"+pid+"'";
//            ResultSet rss=dbc.getData(ssq);
//            while(rss.next()){
//                count=rss.getInt(1);
//                //JOptionPane.showMessageDialog(null, count);
//            }
//            int num=count+1; 
//              String filename="A"+pid+"R"+hos_id+count;
////              String filename1="A"+pid+"D"+hos_id+count;
//            String key1="DOALL"+pid+hos_id;
////            String key2="DOPHEA"+pid+hos_id;
//            if(key1.length()>12){
//            key1=key1.substring(0,12);
//            }
////        } if(key2.length()>12){
////            key2=key2.substring(0,12);
////        }
//        key1=Privacy.visionpack.keys(key1);
////        key2=Privacy.visionpack.keys(key2);
//        String re=vb.encrypt(allergymedicine, key1);
////        String med=vb.encrypt(allgmedicine, key2);
//        session.setAttribute("medicine",re);
////        session.setAttribute("medicine",med);
//        session.setAttribute("filename_med", filename);
////        session.setAttribute("filename_mdcn",filename1);
        String date=DateTime.DateTime.getCurrentDate();       
        String time=DateTime.DateTime.getCurrentTime();    
////        String sq="insert into medical_file(patient_name,patient_id,filename,hospital_id,doctor,doctor_id,time,date,kee,number) values('"+pname+"','"+pid+"','"+filename+"','"+hos_id+"','"+doc+"','"+doc_id+"','"+time+"','"+date+"','"+key1+"','"+num+"')";
////        String sq1="insert into medicine_file(patient_name,patient_id,filename,hospital_id,doctor,doctor_id,time,date,kee,number) values('"+pname+"','"+pid+"','"+filename1+"','"+hos_id+"','"+doc+"','"+doc_id+"','"+time+"','"+date+"','"+key2+"','"+num+"')";
////        dbc.putData(sq);
////        dbc.putData(sq1);
//        //JOptionPane.showMessageDialog(null, "upload...");
//        dbc.putData("insert into allergytb(patient_name,patient_id,filename,hospital_id,doctor,doctor_id,kee,number,date,time)values('"+pname+"','"+pid+"','"+filename+"','"+hos_id+"','"+doc+"','"+doc_id+"','"+key1+"','"+num+"','"+date+"','"+time+"')");
//       //JOptionPane.showMessageDialog(null, "inserteddddddd");
            
        // //JOptionPane.showMessageDialog(null, "inserted.."+re);
//          //JOptionPane.showMessageDialog(null,med);
//          //JOptionPane.showMessageDialog(null,filename+"  "+filename1);
          dbc.putData("insert into allergytb(patient_name,patient_id,hospital_id,doctor,doctor_id,date,time,description,medicine)values('"+pname+"','"+pid+"','"+hos_id+"','"+doc+"','"+doc_id+"','"+date+"','"+time+"','"+report+"','"+allgmedicine+"')");
          response.sendRedirect("../view_pat_1.jsp");

        %>
    </body>
</html>
