<%-- 
    Document   : medreport_upload_action
    Created on : 20 Dec, 2013, 10:08:56 AM
    Author     : IVS PC5
--%>

<%@page import="java.io.IOException"%>
<%@page import="Privacy.FTPUtils"%>
<%@page import="org.apache.commons.net.ftp.FTPClient"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%  
    String name="";
ServletContext context = pageContext.getServletContext();
String filePath = context.getInitParameter("file-upload"); 
//JOptionPane.showMessageDialog(null, filePath);
   // Verify the content type
String a[]=new String[4];
     String passwordEnc=session.getAttribute("medical").toString();
    // //JOptionPane.showMessageDialog(null, "passss"+passwordEnc);
     String medicine=session.getAttribute("medicine").toString();
     String filename=session.getAttribute("filename_med").toString();
      String filename1=session.getAttribute("filename_mdcn").toString();
      a[0]=passwordEnc;
      a[1]=medicine;
      a[2]=filename;
      a[3]=filename1;
      for(int i=0;i<2;i++){
           name=a[i+2];
          OutputStream os1 = new FileOutputStream(filePath+name);
     os1.write(a[i].getBytes());
    
                 ////JOptionPane.showMessageDialog(null,"write cheithu");                 
        //*********************Uploading the data***********************
       FTPClient ftpclient = new FTPClient();
       try {
    FTPUtils.ftpConnect(ftpclient, "192.168.1.12", "root", "");
    FTPUtils.uploadFile(ftpclient, filePath+name, "C:/Users/IVS PC5/Documents/phrr/"+name);
       } catch (IOException e) {
             // TODO Auto-generated catch block
       e.printStackTrace();
          }
      }
     
      response.sendRedirect("../doctor_home.jsp");
%>