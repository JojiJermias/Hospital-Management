<%-- 
    Document   : file_down_action
    Created on : 18 Dec, 2013, 2:21:05 PM
    Author     : IVS PC5
--%>

<%@page import="Privacy.vb"%>
<%@page import="Privacy.visionpack"%>
<%@page import="Privacy.FTPUtils"%>
<%@page import="DB.DBProcess"%>

<%@page import="java.util.*,java.io.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
<%@page import="org.apache.commons.net.ftp.FTPClient"%>
<%@page import="com.sun.org.apache.bcel.internal.generic.TABLESWITCH"%>
<%
   try {
        session.setAttribute("ErMsg", "");        
         String type=session.getAttribute("usertype").toString();
        String fname = session.getAttribute("filename").toString();
       // //JOptionPane.showMessageDialog(null, "hiiiiii"+fname);
        String kee=session.getAttribute("kee").toString();
       // //JOptionPane.showMessageDialog(null, fname);
        if (fname != ""){
            String orgname = fname;
                   
                // String ss=Sendmail.sendMail("prasanthprasad@visiontux.net","Your key for "+name+"",key);
            
                //ftp downloading
                FTPClient ftpclient = new FTPClient();
                try {
                    FTPUtils.ftpConnect(ftpclient, "192.168.1.12", "root", "");
                   
                    FTPUtils.downloadFile(ftpclient,  "C:/Users/IVS PC5/Documents/phrr/"+fname, "C:/Users/IVS PC5/Documents/phrdown/" + orgname);
                    
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                File gf = new File("C:/Users/IVS PC5/Documents/phrr/" + orgname);
                String str = orgname;
                             
                //OPen an input stream to the file and post the file contents thru the 
                //servlet output stream to the client m/c
               // FTPUtils.downloadFile(ftpclient, "C:/Users/Android User/Documents/phrr/" + orgname, "C:/Users/Android User/Documents/phrdown/" + orgname);
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
                      // //JOptionPane.showMessageDialog(null,c);
                    }
                } catch (IOException ioe) {
                    ioe.printStackTrace(System.out);
                }
                //JOptionPane.showMessageDialog(null, orgnl);
                       
//                outs.flush();
//                outs.close();
                in.close();
              String keee=visionpack.keys(kee);
        ////JOptionPane.showMessageDialog(null, keee);
       String enc= vb.decrypt(orgnl,keee); 
       session.setAttribute("medicine", enc);
       ////JOptionPane.showMessageDialog(null,enc);
       if(type.equals("pharmacist")){
           response.sendRedirect("../view_medicine1.jsp");
       }else if(type.equals("doctor")){
           response.sendRedirect("../view_medicine_doc.jsp");
       }
       
       
        }
        
    } catch (Exception e) {
        session.setAttribute("ErMsg", "");
       response.sendRedirect("../view_medicine.jsp");
    }
%>