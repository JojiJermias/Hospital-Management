<%-- 
    Document   : show_doct
    Created on : Jun 17, 2016, 11:41:12 AM
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
				
                                <div class="entry">
                                    
                                    <div style="border-radius: .5em;border-top:35px lightskyblue solid;border-right: 5px lightskyblue solid;border-left:  5px lightskyblue solid; border-bottom:  5px lightskyblue solid; width:720px; height: 750px; background:url('images/cfd.jpeg');background-size:810px 870px;background-repeat: no-repeat; position: relative; left:40px; padding:45px; font-size: 15px; top:30px;"> 
                                      <a href="hos_admin_home.jsp"> <img style="  position: relative; left: 740px;top:-75px;height: 24px; width: 24px;" src="images/delete-icon.png"/></a>
                                      <br> <br><br><br>
                                             <%
              String name=request.getParameter("na");
               DBConnection dbc=new DBConnection();
        ResultSet rs=null;
        String dep="",qual="",exp="";
        String sql="select * from doctor where name='"+name+"'";
        rs=dbc.getData(sql);
        while(rs.next()){
            dep=rs.getString("department");
            qual=rs.getString("qualification");
            exp=rs.getString("experience");
        }    // //JOptionPane.showMessageDialog(null, name);
              name=name.toUpperCase();
          %>
          <div style="width:170px; height:200px; border:1px black solid;">
              <img src="images/pro.jpeg" style="width: 170px; height:200px; "/>
             
          </div>
          
          <br>
              &nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: black; font-size:20px; ">Dr.<%=name%></span>
          <h3 style="padding-top: 15px; color: dodgerblue;">Area of Specification</h3>
          <h3><%=dep%></h3>
          <h3 style="padding-top: 15px; color: dodgerblue;">Qualification </h3>
          <h3><%=qual%></h3>
          <h3 style="padding-top: 15px; color: dodgerblue;"> Fellowships / Work Experiences</h3>
         
          <h3>Information Not Available</h3>
           <h3 style="color: dodgerblue; position: relative; left:440px; top:-55px;">Awards and Achievements</h3>
          <h3 style="position: relative; left:440px; top:-55px;">Information Not Available</h3>
          <hr style="position: relative;top:-40px; border:1px #0c1c22 dotted;"></hr> 
                                   
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
