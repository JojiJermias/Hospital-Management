<%-- 
    Document   : allergy_upload_action
    Created on : 7 May, 2014, 1:47:51 PM
    Author     : IVS PC5
--%>

<%@page import="java.io.IOException"%>
<%@page import="Privacy.FTPUtils"%>
<%@page import="org.apache.commons.net.ftp.FTPClient"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  
    String name="";
ServletContext context = pageContext.getServletContext();
String filePath = context.getInitParameter("file-upload"); 
//JOptionPane.showMessageDialog(null, filePath);
   // Verify the content type
String a[]=new String[4];
//     String passwordEnc=session.getAttribute("medical").toString();
//     //JOptionPane.showMessageDialog(null, passwordEnc);
     String medicine=session.getAttribute("medicine").toString();
     String filename=session.getAttribute("filename_med").toString();
//      String filename1=session.getAttribute("filename_mdcn").toString();
//      a[0]=passwordEnc;
      //a[0]=medicine;
     // a[1]=filename;
//      a[3]=filename1;
//      for(int i=0;i<2;i++){
//           name=a[i];
          OutputStream os1 = new FileOutputStream(filePath+filename);
     os1.write(medicine.getBytes());
    
                 ////JOptionPane.showMessageDialog(null,"write cheithu");                 
        //*********************Uploading the data***********************
       FTPClient ftpclient = new FTPClient();
       try {
    FTPUtils.ftpConnect(ftpclient, "192.168.0.1", "root", "");
    FTPUtils.uploadFile(ftpclient, filePath+filename, "C:/Users/Android User/Documents/phrr/"+filename);
       } catch (IOException e) {
             // TODO Auto-generated catch block
       e.printStackTrace();
          }
     // }
     
      response.sendRedirect("../doctor_home.jsp");
%>
    </body>
</html>
