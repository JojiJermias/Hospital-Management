<%-- 
    Document   : index
    Created on : Jun 16, 2016, 1:02:24 PM
    Author     : IVS PC5
--%>

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
            height: 155px;
            width: 300px;

            visibility: visible; position: relative; top:50px; left: 280px; display: block;
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
        #chu:hover
        {
            -webkit-transform: scale(1.3,1.3);
            -moz-transform:scale(1.3,1.3);
            opacity: 1;
            -webkit-opacity: 1;
            -moz-opacity: 1;
            cursor: wait;
            /*    transform: rotateX(130deg);
            -ms-transform: rotateX(130deg);  IE 9 
            -webkit-transform: rotateX(130deg);  Safari and Chrome */
        }
        
    </style>
    <script>
            function read()
            {
                document.getElementById("erm").style.display="none";
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
      
	
	<!-- end #menu -->
    <div id="page" style="height:550px;">
	<div id="content">
            <div id="banner">
                <img style="position: relative; width: 900px; height: 250px;left:-10px; border: moccasin solid thick; border-radius: 15px;" src="images/slide4.jpg" alt="" />
            </div>
		<div class="post">
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
                            <form action="action/login_action.jsp">
                                <h2 style="left: 100px; position: relative;">Sign in</h2>
                                    <table>                                              
                                        <tr><td>
                                                <label for="user">Username:</label>
                                            </td>
                                            <td>
                                                <input type="text" name="user" placeholder="username" required="required" onclick="read()"/>
                                            </td>
                                            <td>
                                                <span id="erm" style="color: red"><%=msg%></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td> 
                                                <label for="pass">Password:</label>
                                            </td>
                                            <td> 
                                                <input type="password" name="pass" placeholder="password" required="required"/>
                                            </td>
                                            <td>
                                                <font style="color:red"></font>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td> </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input id="chu" type="image" src="images/New One.png" width="100px" value="submit">
                                             </td>
                                        </tr>
                                    </table>
                            </form>                                         
                        </div>
                    </div>
		</div>
                
        </div>
    </div>
</body>
</html>
