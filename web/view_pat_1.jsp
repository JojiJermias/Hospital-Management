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
  <style type="text/css">
        body {height: 100%;padding: 0;margin: 0;}.ad{text-align: center;position: absolute;top:20px;margin:0 auto;width:100%;}.container {margin: 0 auto;width: 410px;text-align: center;}.container h1 {font-family: Arial;font-size: 48px;text-align: center;text-transform: uppercase;color: #282321;margin: 220px 0 100px 0;text-shadow: 0 1px 0 #6c5e5b, 0 -1px 0 rgba(0,0,0,0.6);filter: dropshadow(color=#6c5e5b, offx=0, offy=1);}

/*------------------------------------------*/
/*--------- Dark Menu Styles Begin ---------*/
/*------------------------------------------*/

        /* Main Dark Menu Unordered List First Level Style */
        ul.dark_menu {
            list-style: none;
            padding: 0;
            font-family: Arial;
            font-size: 14px;
            line-height: 14px;
        }

        /* Clears all floated List Items */
        ul.dark_menu:after {
            content: "";
            clear: both;
            display: block;
            overflow: hidden;
            visibility: hidden;
            width: 0;
            height: 0;
        }

            /* First Level List Items Style */
            ul.dark_menu li {
                float: left;
                margin: 0 0 0 10px;
                position: relative;
                
            }

            /* First List Item in First Level Style */
            ul.dark_menu li:first-child {
                margin: 0;
            }

                /* List Items Links Style */
                ul.dark_menu li a, ul.dark_menu li a:link {
                    color: white;
                    text-decoration: none;
                    display: block;
                    padding: 10px 26px;
                    
                    /* Text Shadow */
                    text-shadow: 0 1px 0 #4b433e;
                    
                    /* Gradient Background */
                    background: #362f2c; /* Old browsers */
                    background: -moz-linear-gradient(top, #362f2c 0%, #282321 100%); /* FF3.6+ */
                    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#362f2c), color-stop(100%,#282321)); /* Chrome,Safari4+ */
                    background: -webkit-linear-gradient(top, #362f2c 0%,#282321 100%); /* Chrome10+,Safari5.1+ */
                    background: -o-linear-gradient(top, #362f2c 0%,#282321 100%); /* Opera11.10+ */
                    background: -ms-linear-gradient(top, #362f2c 0%,#282321 100%); /* IE10+ */
                    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#362f2c', endColorstr='#282321',GradientType=0 ); /* IE6-9 */
                    background: linear-gradient(top, #362f2c 0%,#282321 100%); /* W3C */

                    /* Border Radius */
                    -webkit-border-radius: 4px;
                    -moz-border-radius: 4px;
                    border-radius: 4px;

                    /* Box Shadows */
                    -webkit-box-shadow: inset 0 1px 0 #564b46,
                                       0 1px 1px #181514;
                    -moz-box-shadow: inset 0 1px 0 #564b46,
                                     0 1px 1px #181514;
                    box-shadow: inset 0 1px 0 #564b46,
                                0 1px 1px #181514;

                    /* Transition Effect */
                    -webkit-transition: all 1s ease;
	                -moz-transition: all 1s ease;
	                -o-transition: all 1s ease;
	                -ms-transition: all 1s ease;
	                transition: all 1s ease;
                }

                    /* List Items Links Hover State Style */
                    ul.dark_menu li a:hover {
                        color: #73635e;

                        /* Text Shadow */
                        text-shadow: 0 1px 1px #000;

                        /* Gradient Background */
                        background: highlighttext; /* Old browsers */
                        background: -moz-linear-gradient(top, #282321 0%, #362f2c 99%, #362f2c 100%); /* FF3.6+ */
                        background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#282321), color-stop(99%,#362f2c), color-stop(100%,#362f2c)); /* Chrome,Safari4+ */
                        background: -webkit-linear-gradient(top, #282321 0%,#362f2c 99%,#362f2c 100%); /* Chrome10+,Safari5.1+ */
                        background: -o-linear-gradient(top, #282321 0%,#362f2c 99%,#362f2c 100%); /* Opera11.10+ */
                        background: -ms-linear-gradient(top, #282321 0%,#362f2c 99%,#362f2c 100%); /* IE10+ */
                        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#282321', endColorstr='#362f2c',GradientType=0 ); /* IE6-9 */
                        background: linear-gradient(top, #282321 0%,#362f2c 99%,#362f2c 100%); /* W3C */

                        /* Transition Effect */
                        -webkit-transition: all 1s ease;
	                    -moz-transition: all 1s ease;
	                    -o-transition: all 1s ease;
	                    -ms-transition: all 1s ease;
	                    transition: all 1s ease;
                    }

                    /* List Items Links Active and Selected State Style */
                    ul.dark_menu li a.selected, ul.dark_menu li a:active {
                        color: white;
                        background: darkcyan;

                        /* Text Shadow */
                        text-shadow: 0 1px 1px #000;

                        /* Box Shadows */
                        -webkit-box-shadow: inset 0 2px 4px rgba(0,0,0,0.6),
                                           0 1px 0 #5e524f;
                        -moz-box-shadow: inset 0 2px 4px rgba(0,0,0,0.6),
                                         0 1px 0 #5e524f;
                        box-shadow: inset 0 2px 4px rgba(0,0,0,0.6),
                                    0 1px 0 #5e524f;
                        
                        /* Transition Effect */
                        -webkit-transition: all 1s ease;
	                    -moz-transition: all 1s ease;
	                    -o-transition: all 1s ease;
	                    -ms-transition: all 1s ease;
	                    transition: all 1s ease;
                    }

                    /* Sub Menu Unordered List Second Level Style */
                    ul.dark_menu li ul {
                        display: none;
                    }

                    /* Before Second Level Unordered List Style */
                    ul.dark_menu li ul:before {
                        content: " ";
                        position: absolute;
                        display: block;
                        z-index: 1500;
                        left: 0;
                        top: -10px;
                        height: 10px;
                        width: 100%;
                    }

                    /* Sub Menu Unordered List Second Level Style
                        When Parent List Item is Hovered */
                    ul.dark_menu li:hover ul {
                        position: absolute;
                        display: block;
                        z-index: 1000;
                        left:8px;
                        top: 44px;
                        /*padding: 5px 0;*/
                        list-style: none;
                        background:black;
                        height: auto;
                        

                        /* Box Shadows */
                        -webkit-box-shadow: inset 0 2px 4px rgba(0,0,0,0.6),
                                           0 1px 0 #5e524f;
                        -moz-box-shadow: inset 0 2px 4px rgba(0,0,0,0.6),
                                         0 1px 0 #5e524f;
                        box-shadow: inset 0 2px 4px rgba(0,0,0,0.6),
                                    0 1px 0 #5e524f;

                        /* Border Radius */
                        -webkit-border-radius: 4px;
                        -moz-border-radius: 4px;
                        border-radius: 4px;
                    }

                        /* Second Level Menu List Items Style */
                        ul.dark_menu li ul li {
                            float: none;
                            margin: 0 10px;                            
                            border-bottom: 1px solid #191614;
                            border-top: 1px solid #3a3230;
                        }

                        /* First List Item in Second Level Menu Style */
                        ul.dark_menu li ul li:first-child {
                            margin: 0 10px;
                            border-top: 0 none;
                        }

                        /* Last List Item in Second Level Menu Style */
                        ul.dark_menu li ul li:last-child {
                            border-bottom: 0 none;
                        }

                        /* Second Level List Items Links Style */
                        ul.dark_menu li ul li a, ul.dark_menu li ul li a:link {
                            color: yellowgreen;
                            display: block;
                            background: transparent none;
                            padding: 10px 20px 10px 5px;
                            white-space: nowrap;

                            /* Text Shadow */
                            text-shadow: 0 1px 2px #000;
                                                        
                            /* Box Shadows */
                            -webkit-box-shadow: 0 0 0 rgba(0,0,0,0);
                            -moz-box-shadow: 0 0 0 rgba(0,0,0,0);
                            box-shadow: 0 0 0 rgba(0,0,0,0);

                            /* Border Radius */
                            -webkit-border-radius: 0px;
                            -moz-border-radius: 0px;
                            border-radius: 0px;
                        }

                        /* Second Level List Items Links Hover State Style */
                        ul.dark_menu li ul li a:hover {
                            text-decoration: none;
                            
                            color: highlight;
                            text-shadow: 1px 2px  #121214;
                        }

/*----------------------------------------*/
/*--------- Dark Menu Styles End ---------*/
/*----------------------------------------*/
    </style>

 <script type="text/javascript">
        function validation()
      {
          if(document.getElementById('name1').value=="")
              {
          document.getElementById('regname').style.display='block';
      
          return false; 

          }
          else if(document.getElementById('Experience').value=="")
              {
                  document.getElementById('regname').style.display='none';
                  document.getElementById('regexp').style.display='block';
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
        <div id="menu">
		<ul class="dark_menu">
			<li><a  href="doctor_home.jsp">Home</a></li>
			<li><a href="#" class="selected">Patient Details</a>
                        </li>
			<li ><a href="#">Report</a>
                            <ul>
                                <li><a href="submit_report.jsp">Medicine Prescription</a></li>
                                
                                <li><a href="submit_allergies.jsp">Allergies Prescription</a></li></ul>
                        </li>
			
                        <li><a href="#">View</a>
                            <ul>
                                <li><a href="action/view_medicine_doc_action.jsp">Medicine Report</a></li>
                                <li><a href="action/view_medical_action.jsp">Medical Report</a></li>
                                <li><a href="view_all_allergys.jsp">Allergies </a></li>
                            </ul></li>
                        <li><a href="logout.jsp">Logout</a></li>
		</ul>
	</div>
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
                                          <a href="doctor_home.jsp"> <img style="left:615px; top:-75px; position: relative; height: 25px; width: 25px;" src="images/delete-icon.png"/></a>
                                         <br><br> <%
                                   
                                    for(int i=0;i<n;i++){
                                        sss=ss[i];
                                        String  si[]=sss.split(":");
                                        String first=si[0];
                                        String sec=si[1];
                                   // //JOptionPane.showMessageDialog(null, sss);
                                    %>
                                   
                                    <font style="color: dodgerblue;padding-left:120px;font-size:16px;"> <b><%=first%>&nbsp;:</b></font>
                                    <font style="color: black;font-family: 'Journal';"> <%=sec%></font><br><br>
                                                <%}%></div>
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
