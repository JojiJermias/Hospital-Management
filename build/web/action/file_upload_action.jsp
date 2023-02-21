<%-- 
    Document   : file_upload_action
    Created on : 17 Dec, 2013, 10:27:27 AM
    Author     : IVS PC5
--%>
<%@page import="java.io.IOException"%>
<%@page import="Privacy.FTPUtils"%>
<%@page import="org.apache.commons.net.ftp.FTPClient"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%  
ServletContext context = pageContext.getServletContext();
String filePath = context.getInitParameter("file-upload"); 
   // Verify the content type
     String passwordEnc=session.getAttribute("personal").toString();
     String filename=session.getAttribute("filename").toString();
     OutputStream os1 = new FileOutputStream(filePath+filename);
     os1.write(passwordEnc.getBytes());
                 ////JOptionPane.showMessageDialog(null,"write cheithu");                 
        //*********************Uploading the data***********************
       FTPClient ftpclient = new FTPClient();
       try {
           
    FTPUtils.ftpConnect(ftpclient, "192.168.1.12", "root","");
    System.out.println("file uploading code");
    FTPUtils.uploadFile(ftpclient, filePath+filename, "C:/Users/IVS PC5/Documents/phrr/"+filename);
       } catch (IOException e) {
             // TODO Auto-generated catch block
       e.printStackTrace();
          }
      response.sendRedirect("../patient_registration.jsp");
%>
