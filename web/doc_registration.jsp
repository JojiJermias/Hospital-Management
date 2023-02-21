<%-- 
    Document   : doc_registration
    Created on : Jun 16, 2016, 3:30:01 PM
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
        height: 600px;
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
    form 
    {
	font-family:'Century Gothic', arial, serif;
	width: 350px;
	margin-left: 25px;
    }
    input, textarea, select 
    {
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
    textarea 
    {
	min-height: 200px;
	resize:none;
    }
    input:focus, textarea:focus, select:focus
    {
	-webkit-box-shadow: 0 0 25px #ccc;
	-moz-box-shadow: 0 0 25px #ccc;
	box-shadow: 0 0 25px #ccc;
    }
    /* The interesting bit */
    input:not(:focus), textarea:not(:focus), select:not(:focus)
    {
        opacity: 0.5;
    }
    input:required, textarea:required, select:required
    {
        background: url("images/asterisk_orange.png") no-repeat 280px 7px;
    }
    input:valid, textarea:valid, select:valid{
        background: url("images/") no-repeat 280px 5px;
    }
    input:focus:invalid, textarea:focus:invalid, select:focus:invalid{
        background: url("images/") no-repeat 280px 7px;
    }
    input[type=submit]
    {
        font-size: 24px;
        padding: 10px;
        background: none;
        opacity: 1.0;
    }

</style>
<script type="text/javascript">
    function validation()
    {
          
        var b=document.getElementById('email').value;
        var l=b.length;
        var c=b.indexOf("@");
        var d=b.indexOf(".",c);
      
        if(document.getElementById('name1').value=="")
        {
            document.getElementById('regname').style.display='block';
      
            return false; 

        }
        else if(document.getElementById('Department').value=="")
        {
            document.getElementById('regname').style.display='none';
            document.getElementById('regdepart').style.display='block';
             return false;
        }
        else if(document.getElementById('Qualification').value=="")
        {
            document.getElementById('regname').style.display='none';
            document.getElementById('regdepart').style.display='none';
            document.getElementById('regqual').style.display='block';
          return false;
          }
        else if(document.getElementById('Experience').value=="")
        {
            document.getElementById('regname').style.display='none';
            document.getElementById('regdepart').style.display='none';
            document.getElementById('regqual').style.display='none';

            document.getElementById('regexp').style.display='block';
            return false;
        }
        else if(document.getElementById('mobilenumber').value=="")
        {
            document.getElementById('regname').style.display='none';
            document.getElementById('regdepart').style.display='none';
            document.getElementById('regqual').style.display='none';
            document.getElementById('regexp').style.display='none';
              
            document.getElementById('regm').style.display='block';
            return false;
        }
        var a=document.getElementById('mobilenumber').value;
        if(isNaN(a)||a.length!=10)
        {
            document.getElementById('regname').style.display='none';
            document.getElementById('regdepart').style.display='none';
            document.getElementById('regqual').style.display='none';
            document.getElementById('regexp').style.display='none';
            document.getElementById('regm').style.display='block';
            return false;
        }
        else if(document.getElementById('email').value=="")
        {
            document.getElementById('regname').style.display='none';
            document.getElementById('regdepart').style.display='none';
            document.getElementById('regqual').style.display='none';
            document.getElementById('regexp').style.display='none';
            document.getElementById('regm').style.display='none';

            document.getElementById('rege').style.display='block';
            return false;
        }
        else if((c+1>d)||(c<0)||(d>l)||d==-1)
        {
            document.getElementById('regname').style.display='none';
            document.getElementById('regdepart').style.display='none';
            document.getElementById('regqual').style.display='none';
            document.getElementById('regexp').style.display='none';
            document.getElementById('regm').style.display='none';
            document.getElementById('rege').style.display='block';
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
        var str=document.getElementById("Department").value;
    
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
  
        xmlhttp.open("POST","qua.jsp?q="+str,true);
  

        xmlhttp.send();
        xmlhttp.onreadystatechange=function()
        {
            if (xmlhttp.readyState==4 && xmlhttp.status==200)
            {
                //    alert(xmlhttp.responseText);
                document.getElementById("Qualification").innerHTML=xmlhttp.responseText;

            }
        }
    }
</script>

</head>
<body onload="loadXMLDoc();">
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
<!--                <div id="banner"><img style="position: relative; width: 700px; height: 150px;left:100px; border: white solid thick;" src="images/urll.jpeg" alt="" /></div>-->
                    div class="post">
                    <%
                        String msg="";
                        try
                        {
                        msg=session.getAttribute("Errmsg").toString();
                        }catch(Exception e)
                        {
                            System.err.println(e);
                        }
                    %>		
                <div class="entry">
                <div id="reg">
                <form action="action/doc_register_action.jsp"name="contact"method="post">
                    <a href="hos_admin_home.jsp"> <img style="left: 340px;  position: relative; height: 25px; width: 25px;" src="images/delete-icon.png"/></a>
                    <h2 style="left: 115px;top:-15px; position: relative;">sign up</h2>                                          
                    <label for="name">Name:</label>
                    <input type="text" name="name" id="name1" placeholder="Doctor Name"  required pattern="^([A-Za-z]*)$"/>
                    <span name="regname" id="regname" style="display:none;color:red"><median>characters only</median> </span>
                    <label for="Department">Department:</label>
                    <select style="height: 35px;" name="Department" id="Department" onchange="loadXMLDoc();">
                    <%
                        String dep="";
                        String sql="Select distinct department from dep_details";
                        DBConnection db=new DBConnection();
                        ResultSet rs=null;
                        rs=db.getData(sql);
                        while(rs.next())
                        {
                            dep=rs.getString("department");
                    %>
                        <option><%=dep%></option>
                    <%  } %> 
                    </select><span name="regdepart" id="regdepart" style="display:none;color:red">
                        <median>Invalid Department</median> </span>
                    <label for="Qualification">Qualification:</label>
                    
                    <select style="height: 35px;" name="Qualification" id="Qualification">
                       
                    </select><span name="regqual" id="regqual" style="display:none;color:red">
                        <median>Invalid Qualification</median> </span>
                   
                    <label for="Experience">Experience:</label>
                    <input type="text" name="Experience" id="Experience" placeholder="Experience" />
                    <span name="regexp" id="regexp" style="display:none;color:red"><median>invalid Experience</median> </span>
                   
                    <label for="name">Mobile number:</label>

                    <input type="text"  name="mobilenumber" id="mobilenumber"   placeholder="eg:9841034231" /><span name="regm" id="regm" style="display:none;color:red">
                        <median>invalid mobile number</median> </span>


                    <label for="email">Email:</label>
                    <input type="email" name="email" id="email"  placeholder="eg:email@example.com" /><span name="rege" id="rege" style="display:none;color:red"><median>invalid email</median> </span>


                    <input type="submit" value="Register" onclick="return validation()"/>
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
