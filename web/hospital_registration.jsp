<%-- 
    Document   : hospital_registration
    Created on : Jun 17, 2016, 11:29:09 AM
    Author     : IVS PC5
--%>

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
<script>
     window.history.forward(1);
  
     <%
     

    String name = (String)session.getAttribute("username");
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    if(session.getAttribute("username")==null)
               {
        response.sendRedirect("index.jsp");
    }

    %></script>
<style>
    
        #reg
        {
            height: 280px;
            width: 390px;

      visibility: visible; position: relative; top:50px; left: 240px; display: block;
        background-color: rgba(0, 0, 0, 0.80);
	border: 1px solid #cecece;
        z-index: 15;
	padding: 20px;
	color: #FFF;
        -webkit-box-shadow: 0px 0px 4px #000 inset;
	-moz-box-shadow: 0px 0px 4px #000 inset;
	box-shadow: 0px 0px 4px #000 inset;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	-o-border-radius: 10px;
	-ms-border-radius: 10px;
	-khtml-border-radius: 10px;
	border-radius: 10px;

}
        
</style>
 <script>
    function val(){
        
        var name=document.getElementById("Name").value;
        var loc=document.getElementById("depr").value;
        var admin=document.getElementById("myDiv").value;
        var email=document.getElementById("Email").value;  
        var phone=document.getElementById("Phone").value;
         var l=email.length;
            var c=email.indexOf("@");
            var d=email.indexOf(".",c);
     
          if(name.search(/^[a-zA-Z\s]+$/)===-1)
           {              
                document.getElementById('pho').style.display='none';
                document.getElementById('ema').style.display='none';
                document.getElementById('loct').style.display='none';
                document.getElementById('admn').style.display='none';
                document.getElementById('nam').style.display='block';
                    
                    return false;
            }
            else if(loc.search(/^[a-zA-Z\s]+$/)===-1){
                document.getElementById('pho').style.display='none';
                document.getElementById('ema').style.display='none';
                document.getElementById('nam').style.display='none';
                 document.getElementById('admn').style.display='none';
                document.getElementById('loct').style.display='block';
                return false;
            }
            else if(admin.search(/^[a-zA-Z\s]+$/)===-1){
                document.getElementById('pho').style.display='none';
                document.getElementById('ema').style.display='none';
                document.getElementById('nam').style.display='none';
                document.getElementById('loct').style.display='none';
                document.getElementById('admn').style.display='block';
                return false;
            }
          else if((c+1>d)||(c<0)||(d>l)||d===-1||email===""){
                 
                document.getElementById('nam').style.display='none';
                document.getElementById('pho').style.display='none';
                document.getElementById('loct').style.display='none';
                 document.getElementById('admn').style.display='none';
                document.getElementById('ema').style.display='block';
            return false;
            }
     else if(isNaN(phone)||phone.length!==10||phone===""){
           
                document.getElementById('nam').style.display='none';
                document.getElementById('ema').style.display='none';
                document.getElementById('loct').style.display='none';
                 document.getElementById('admn').style.display='none';
                document.getElementById('pho').style.display='block';
                return false;
            }
             
            else{
                return true;
            }
          
    }
</script>
</head>
<body>
<div id="wrapper">
    <div id="header" >
		<div id="logo">
                   <a href="#" >Secure Sharing Of Health Records in Cloud</a>
			<p><a href="#">Using Attribute Based Encryption</a></p>
		</div>
	</div>
	<!-- end #header -->
	  <div id="page" style="height: 600px;">
		<div id="content">
<!--                    <div id="banner"><img style="position: relative; width: 700px; height: 150px;left:100px; border: white solid thick;" src="images/urll.jpeg" alt="" /></div>-->
			<div class="post">
				<%
                                    String msg="";
                                    try{
                                        msg=session.getAttribute("Errmsg").toString();
                                    }catch(Exception e){
                                        System.err.println(e);
                                    }
                                %>		
                                <div class="entry">
                                    <div id="reg">
                                        <form action="action/hos_register_action.jsp">
                                            <a href="cloud_admin_home.jsp"> <img style="left: 360px;  position: relative; height: 25px; width: 25px;" src="images/delete-icon.png"/></a>
                                        <u><h2 style="left: 115px;top:-15px; position: relative;">sign up</h2></u> 
                                        <table><tr><td>
                                        <label for="Name">Hospital Name:</label></td>
                                                <td><input type="text" id="Name" name="Name" placeholder="Hospital Name" required/></td>
                                                <td><span id="nam" style="display: none; "><font style="color: red">Characters only</font></span></td></tr>
                                            <tr><td> <label for="Department">Location:</label></td>
                                                <td><input type="text" id="depr" name="location"placeholder="Hospital Location"  ></td><td><span id="loct" style="display: none; "><font style="color: red">Characters only</font></span></td></tr>
                                           <tr><td> <label for="Designation">Admin:</label></td>
                                                <td><input type="text" id="myDiv" name="admin"placeholder="Admin Name" >  </td><td><span id="admn" style="display: none; "><font style="color: red">Characters only</font></span></td></tr>                                                       
                                            <tr><td> <label for="Email">Email Id:</label></td>
                                                <td> <input type="text" id="Email" name="Email" placeholder="Email" required/></td><td><span id="ema" style="display: none; "><font style="color: red">Invalid Email</font></span></td></tr>
                                            <tr><td> <label for="Phone No">Phone No:</label></td>
                                                <td><input type="text" id="Phone" name="Phone No" placeholder="Phone No" required/></td><td><span id="pho" style="display: none; "><font style="color: red">Invalid number</font></span></td></tr>                             
                                                   <tr><td> </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="image" src="images/re1.png" width="100px" value="submit" onclick="return val();">
                                                </td><td></td></tr>
                                        </table>
                                    </form>
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
