<%-- 
    Document   : doc_registration
    Created on : Jun 17, 2016, 11:49:08 AM
    Author     : IVS PC5
--%>

<%@page import="java.lang.String"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="shortcut icon" href="favicon.ico" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>AB-Encryption</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body >
<div id="wrapper">
    <div id="header" >
		<div id="logo">
                   <a href="#" >Secure Sharing Of Health Records in Cloud</a>
			<p><a href="#">Using Attribute Based Encryption</a></p>
		</div>
	</div>
	<!-- end #header -->
       
	  <div id="page" style="height:1000px;">
		<div id="content">
<!--                    <div id="banner"><img style="position: relative; width: 700px; height: 150px;left:100px; border: white solid thick;" src="images/urll.jpeg" alt="" /></div>-->
			<div class="post">
				<%
                                    String sss="";
                                    String pdata=session.getAttribute("pers").toString();
                                    //JOptionPane.showMessageDialog(null, pdata);
                                    String ss[]=pdata.split("\n");
                                    //String si[];
                                    int n=ss.length;
                                    String msg="";
                                    try{
                                        msg=session.getAttribute("Errmsg").toString();
                                    }catch(Exception e){
                                        System.err.println(e);
                                    }
                                %>		
                                <div class="entry">
                                    
                                    <div style="border-radius: .5em;border-top:35px lightskyblue solid;border-right: 5px lightskyblue solid;border-left:  5px lightskyblue solid; border-bottom:  5px lightskyblue solid; width: 600px; height: 750px; background:url('images/asasa.jpeg');background-size:690px 870px;background-repeat: no-repeat; position: relative; left:100px; padding:45px; font-size: 25px; top:30px;"> 
                                      <a href="receptionist_home.jsp"> <img style="  position: relative; left: 610px;top:-75px;height: 20px; width: 20px;" src="images/delete-icon.png"/></a>
                                        <br><br> <%
                                   
                                    for(int i=0;i<n;i++){
                                        sss=ss[i];
                                        String  si[]=sss.split(":");
                                        String first=si[0];
                                        String sec=si[1];
                                    //JOptionPane.showMessageDialog(null, sss);
                                    %>
                                   
                                    <font style="color: dodgerblue;padding-left:120px;font-size:16px;"> <b><%=first%>&nbsp;:</b></font>
                                    <font style="color: black;font-family: 'Journal';"> <%=sec%></font><br><br>
                                                <%}%>
                                            <a href="changestatus.jsp">Discharge</a>
                                            </div>
				</div>
			</div>
			<div style="clear: both;">&nbsp;</div>
		</div>
		<!-- end #content -->
		
		<!-- end #sidebar -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page -->
</div>
    

<!-- end #footer -->
</body>
</html>
