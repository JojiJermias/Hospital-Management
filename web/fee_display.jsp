<%-- 
    Document   : fee_display
    Created on : Jun 17, 2016, 11:24:36 AM
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
<script>
 function printPage(id) {
    // alert(id)
    var html="<html>";
    html+= document.getElementById(id).innerHTML;
    html+="</html>";
    var printWin = window.open('','','left=0,top=0,width=1,height=1,toolbar=0,scrollbars=0,status =0');
    printWin.document.write(html);
    printWin.document.close();
    printWin.focus();
    printWin.print();
    printWin.close();
}
</script>
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
   
	  <div id="page" style="height:1000px;">
		<div id="content">

			<div class="post">
				<%
                                    String hos_name="";
                                    String pdata=" ";     
                                    String date=DateTime.DateTime.getCurrentDate();
                                    String time=DateTime.DateTime.getCurrentTime();
                                 int pid=Integer.parseInt(session.getAttribute("pat_id").toString());
                                 String patient=session.getAttribute("pat_name").toString().toUpperCase();
                                  String amnt=session.getAttribute("pay").toString();
                                  if(amnt.length()<1){
                                      amnt="0";
                                  }
                                  int bal=Integer.parseInt(session.getAttribute("balnc").toString());
                                  int due=bal-Integer.parseInt(amnt);
                                   int hos_id=Integer.parseInt(session.getAttribute("hos_id").toString());
                                   DBConnection dbc=new DBConnection();
                                   String sql="select hospital_name from hospital where id='"+hos_id+"'";
                                   ResultSet rs=dbc.getData(sql);
                                   while(rs.next()){
                                       hos_name=rs.getString(1).toUpperCase();
                                   }
                                  
                                  // //JOptionPane.showMessageDialog(null, doc_id+"  "+doctor+"  "+hos_id);
                                %>
                                <input type="submit" value="print" onclick="printPage('pri');"/>
                                <div class="entry">
                                    <div id="pri" style="width:610px; height:700px; background:url('images/white-shadow.png');background-size:700px 820px;background-repeat: no-repeat; position: relative; left:100px; padding:45px; font-size: 25px; top:30px;">
                                        <a href="view_fee.jsp"> <img style="left:630px;top: -75px;  position: relative; height: 25px; width: 25px;" src="images/delete-icon.png"/></a>
                                         <img src="images/red.jpeg" style="width: 50px; height: 50px; position: relative; top:15px; left: -50px;"><font style="position: relative; left: -40px;color: black;font-size:16px;"><%=hos_name%></font>
                                             
                                                                                  
                                         <br><center><font style="color:black;font-size: 30px;text-align: center;">&nbsp;TAX INVOICE</font></center><br>
                                                                
                                                     
                                                     <font style="color: black;font-size:18px;">Patient:</font>&nbsp;<font style="color: black; font-size: 16px;"><%=patient%></font> <br>
                                                     
                                                     <div id="des" style="border: #000 solid thin; padding: 5px; width: 50%;">
                                                         <font style="color:black;font-size:18px;">&nbsp;&nbsp;&nbsp;Description  </font>
                                                     </div><div id="chr" style=" position: relative;top: -41px; left: 316px; border: #000 solid thin; padding: 5px; width: 50%">
                                                         <font style="color:black;font-size:18px;">&nbsp;&nbsp;&nbsp;Charges </font>
                                                     </div>
                                                     <div id="des" style="border: #000 solid thin; padding: 5px; width: 50%; height:300px; position: relative;top:-42px; ">
                                                         <font style="color:black;font-size:18px;">&nbsp;&nbsp;&nbsp;Total Amount Payable<br><br>
                                                                 &nbsp;&nbsp;&nbsp;Payment<br><br>
                                                                         &nbsp;&nbsp;&nbsp;Amount Due
                                                                         <br><br><br><br><br> </font>
                                                         <font style="font-size: 15px;color:black;">  TYPE OF SUPPLY:CASH/CREDIT</font>
                                                        
                                                         
                                                     </div><div id="chr" style=" position:relative;top:-354px; left: 316px; border: #000 solid thin; padding: 5px; width: 50%; height:300px; ">
                                                         <font style="color:black;font-size:18px;">&nbsp;&nbsp;&nbsp;<%=bal%> <br><br>
                                                                &nbsp;&nbsp;&nbsp;<%=amnt%>
                                                                <br><br>
                                                                        &nbsp;&nbsp;&nbsp;<%=due%></font>
                                                     </div>
                                                     <div style=" position:relative;top:-354px; left:6px;">
                                                         <font style="font-size:18px;color:black;">  NOTE:</font><font style="font-size:15px;color:black;">1. Cheques/DD's are accepted subject to realisation !!.<br>
                                                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. Original Receipt are to be produced at the time of settlement of bills..</font>
                                                         
                                                     
<!--                                                         <hr style="border:1px #0c1c22 solid;">-->
                                             <font style="color: black;font-size: 20px;"></font> 
                                             <font style="color: black;font-size: 20px; float: right;"> </font>  <font style="color: black;font-size: 16px; float:right;">Date:&nbsp;<%=date%></font><br>
                                             <font style="color: black;font-size: 20px;"></font> 
                                             <font style="color: black;font-size: 20px; float: right;"></font><font style="color: black;font-size:16px; float: right;">Time:&nbsp;<%=time%></font>
                                             <br><br>
                                        <img src="images/bar.jpg" style="width: 180px; height: 20px; float:right;">
                                            </div>
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
                                       
                                       
                                       
                                       
                                       