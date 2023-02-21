<%-- 
    Document   : view_fee
    Created on : Jun 17, 2016, 11:49:08 AM
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

<style>
    
        #reg
        {
            height: 450px;
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
        function validation()
      {
          if(document.getElementById('name1').value=="")
              {
          document.getElementById('regname').style.display='block';
      document.getElementById('amn').style.display='none';
          return false; 

          }
          else if(document.getElementById('Experience').value=="")
              {
                  document.getElementById('amn').style.display='none';
                  document.getElementById('regname').style.display='none';
                  document.getElementById('regexp').style.display='block';
          return false;
          }else if(document.getElementById('bal').value<document.getElementById('amnt').value)
              {
                  document.getElementById('regname').style.display='none';
                  document.getElementById('regexp').style.display='none';
                  document.getElementById('amn').style.display='block';
          return false;
          }
          
        else
            {
                return true;
            }
      }
      </script>

<script>
    function loadXMLDoc()
{
      var str=document.getElementById("name1").value;
    
  // alert(str);
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
  
      xmlhttp.open("POST","findfee.jsp?q="+str,true);
  

xmlhttp.send();
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
   //     alert(xmlhttp.responseText);
     document.getElementById("Experience").innerHTML=xmlhttp.responseText;
 
    }
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
                                        msg=session.getAttribute("Errmsg").toString();
                                    }catch(Exception e){
                                        System.err.println(e);
                                    }
                                %>		
                                <div class="entry">
                                    <div id="reg">
                                        <form action="action/view_fee_action.jsp" name="contact"method="post">
                                            <a href="receptionist_home.jsp"> <img style="left: 340px;  position: relative; height: 25px; width: 25px;" src="images/delete-icon.png"/></a>
                                            <h2 style="left: 115px;top:-15px; position: relative;">search</h2>
                                           
                    <label for="name">Patient Id:</label>
                    <input type="text" name="pid" id="name1" placeholder="Patient Id"  autocomplete="off" onkeyup="loadXMLDoc()" /><span name="regname" id="regname" style="display:none;color:red"><median>characters only</median> </span>
                      <span id="Experience" ></span>
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
