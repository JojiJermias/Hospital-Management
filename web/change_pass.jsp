<%-- 
    Document   : change_pass
    Created on : Jun 17, 2016, 11:17:58 AM
    Author     : IVS PC5
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
            height: 400px;
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
form {
	font-family:'Century Gothic', arial, serif;
	width: 350px;
	margin-left: 25px;
}
input, textarea, select {
	font-family:"Myriad Pro", "Trebuchet MS", sans-serif;
	background-color: #fff;
	border: 1px solid #ccc;
	width: 300px;
	min-height: 30px;
	display: block;
	margin-bottom: 16px;
	margin-top: 8px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	-o-border-radius: 5px;
	-ms-border-radius: 5px;
	-khtml-border-radius: 5px;
	border-radius: 5px;
	-webkit-transition: all 0.5s ease-in-out;
	-moz-transition: all 0.5s ease-in-out;
	-o-transition: all 0.5s ease-in-out;
	-ms-transition: all 0.5s ease-in-out;
	transition: all 0.5s ease-in-out;
	color: #fff;
}
textarea {
	min-height: 200px;
	resize:none;
}
input:focus, textarea:focus, select:focus{
	-webkit-box-shadow: 0 0 25px #ccc;
	-moz-box-shadow: 0 0 25px #ccc;
	box-shadow: 0 0 25px #ccc;
}
/* The interesting bit */
input:not(:focus), textarea:not(:focus), select:not(:focus){
	opacity: 0.5;
}
input:required,textarea:required, select:required{
 background: url("images/asterisk_orange.png") no-repeat 280px 7px;
}
input:valid, textarea:valid, select:valid{
background: url("images/") no-repeat 280px 5px;
}
input:focus:invalid, textarea:focus:invalid, select:focus:invalid{
 background: url("images/") no-repeat 280px 7px;
}
input[type=submit]{
	font-size: 24px;
	padding: 10px;
	background: none;
	opacity: 1.0;
}
        
</style>
 <script type="text/javascript">
    function fu(){
        document.getElementById('er').style.display='none';
    } 
    function validation()
      {
          if(document.getElementById('name1').value=="")
              {
          document.getElementById('cur').style.display='block';
      document.getElementById('cnf').style.display='none';
      document.getElementById('new').style.display='none';
          return false; 

          }
          else if(document.getElementById('name2').value=="")
              {
                   document.getElementById('cnf').style.display='none';
                  document.getElementById('cur').style.display='none';
                  document.getElementById('new').style.display='block';
          return false;
          }
          else if(document.getElementById('name3').value=="")
              {
                   document.getElementById('cur').style.display='none';
                  document.getElementById('new').style.display='none';
                  document.getElementById('cnf').style.display='block';
                  document.getElementById('cnf').innerHTML="Invalid Password";
          return false;
          }
          else if(document.getElementById('name3').value!=document.getElementById('name2').value)
              {
                  document.getElementById('cur').style.display='none';
                  document.getElementById('new').style.display='none';
                  document.getElementById('cnf').style.display='block';
                  document.getElementById('cnf').innerHTML="Password Mismatch";
          return false;
          }
        else
            {
                return true;
            }
      }
      </script>

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
	  <div id="page" style="height:800px;">
		<div id="content">
<!--                    <div id="banner"><img style="position: relative; width: 700px; height: 150px;left:100px; border: white solid thick;" src="images/urll.jpeg" alt="" /></div>-->
			<div class="post">
				<%
    String msg="";
    try{
                                    String utype=session.getAttribute("usertype").toString();
                                    ////JOptionPane.showMessageDialog(null, utype);
                                    if(utype.equals("pharmacist")){
                                        
                                    }
                                    
                                    
                                        msg=session.getAttribute("Errmsg").toString();
                                    }catch(Exception e){
                                        System.err.println(e);
                                    }
                                %>		
                                <div class="entry">
                                    <div id="reg">
                                        <form action="action/change_pass_action.jsp" name="contact"method="post">
                                            <a href="cloud_admin_home.jsp"> <img style="left: 340px;  position: relative; height: 25px; width: 25px;" src="images/delete-icon.png"/></a>
                                        <h2 style="left: 40px;top:-15px; position: relative;">Change Password</h2>
                                           
                    <label for="name">Current Password:</label>
                    <input type="password" name="curp" id="name1" placeholder="Current Password" onclick="fu()"  autocomplete="off" /><span name="regname" id="cur" style="display:none;color:red"><median>Invalid Password</median> </span>
                     <label for="name">New Password:</label>
                    <input type="password" name="newp" id="name2" placeholder="New Password"  autocomplete="off" /><span name="regname" id="new" style="display:none;color:red"><median>Invalid Password</median> </span>
                      <label for="name">Confirm Password:</label>
                    <input type="password" name="cnfp" id="name3" placeholder="Confirm Password"  autocomplete="off" /><span name="regname" id="cnf" style="display:none;color:red"><median>Invalid Password</median> </span>
                    <input type="submit" value="save" onclick="return validation()"/>
<!--                    <center><span id="er" style="display:block;color:red; size: 32px;"><%=msg%></span></center>-->
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