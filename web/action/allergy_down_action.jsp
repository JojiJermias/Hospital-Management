<%-- 
    Document   : allergy_down_action
    Created on : 7 May, 2014, 4:17:46 PM
    Author     : IVS PC5
--%>

<%@page import="Privacy.vb"%>
<%@page import="Privacy.visionpack"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
<%@page import="Privacy.FTPUtils"%>
<%@page import="org.apache.commons.net.ftp.FTPClient"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
   try {
        session.setAttribute("ErMsg", "");        
        String fname = session.getAttribute("filename").toString();
        String kee=session.getAttribute("kee").toString();
        String type=session.getAttribute("usertype").toString();
        ////JOptionPane.showMessageDialog(null, fname);
         ////JOptionPane.showMessageDialog(null,"keyyyyyyyyy"+kee);
        if (fname != ""){
            String orgname = fname;
                   
                // String ss=Sendmail.sendMail("prasanthprasad@visiontux.net","Your key for "+name+"",key);
            
                //ftp downloading
                FTPClient ftpclient = new FTPClient();
                try {
                    FTPUtils.ftpConnect(ftpclient, "192.168.1.12", "root", "");
                   
                    FTPUtils.downloadFile(ftpclient,  "C:/Users/IVS PC5/Documents/phrr/"+fname, "/home/geethr/Desktop/Hos_down/" + orgname);
                    
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                File gf = new File("C:/Users/IVS PC5/Documents/phrr/" + orgname);
                String str = orgname;
                             
                //OPen an input stream to the file and post the file contents thru the 
                //servlet output stream to the client m/c
                FTPUtils.downloadFile(ftpclient, "C:/Users/IVS PC5/Documents/phrr/" + orgname, "C:/Users/IVS PC5/Documents/phrdown//" + orgname);
                InputStream in = new FileInputStream(gf);
               // ServletOutputStream outs = response.getOutputStream();
                String orgnl="";
                int bit = 256;
                int i = 0;
                try {
                    while ((bit) >= 0) {
                        bit = in.read();
                    //    outs.write(bit);
                        char c=(char)bit;
                        orgnl=orgnl+c;
                      //  //JOptionPane.showMessageDialog(null,c);
                    }
                } catch (IOException ioe) {
                    ioe.printStackTrace(System.out);
                }
                ////JOptionPane.showMessageDialog(null, orgnl);
                       
//                outs.flush();
//                outs.close();
                in.close();
              String keee=visionpack.keys(kee);
        ////JOptionPane.showMessageDialog(null,"new keyyy"+ keee);
       String enc= vb.decrypt(orgnl.trim(),keee.trim());
       session.setAttribute("medic", enc);
       ////JOptionPane.showMessageDialog(null,enc);
       if(type.equals("doctor")){
           response.sendRedirect("../view_allergy_doc.jsp");
       }else if(type.equals("patient")){
           response.sendRedirect("../view_medical_p.jsp");
       }
       
        }
        
    } catch (Exception e) {
        session.setAttribute("ErMsg", "");
       response.sendRedirect("../view_medicine.jsp");
    }
%>
    </body>
</html>
