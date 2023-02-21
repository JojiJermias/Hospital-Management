package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import DB.DBConnection;

public final class hos_005fadmin_005fhome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("        <link rel=\"shortcut icon\" href=\"favicon.ico\" />\n");
      out.write("<meta name=\"keywords\" content=\"\" />\n");
      out.write("<meta name=\"descriptjion\" content=\"\" />\n");
      out.write("<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>AB-Encryption</title>\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />\n");
      out.write("<script>\n");
      out.write("     window.history.forward(1);\n");
      out.write("  \n");
      out.write("     ");

     

    String name = (String)session.getAttribute("username");
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    if(session.getAttribute("username")==null)
               {
        response.sendRedirect("index.jsp");
    }

    
      out.write("</script>\n");
      out.write("       <style type=\"text/css\">\n");
      out.write("        body {height: 100%;padding: 0;margin: 0;}.ad{text-align: center;position: absolute;top:20px;margin:0 auto;width:100%;}.container {margin: 0 auto;width: 410px;text-align: center;}.container h1 {font-family: Arial;font-size: 48px;text-align: center;text-transform: uppercase;color: #282321;margin: 220px 0 100px 0;text-shadow: 0 1px 0 #6c5e5b, 0 -1px 0 rgba(0,0,0,0.6);filter: dropshadow(color=#6c5e5b, offx=0, offy=1);}\n");
      out.write("\n");
      out.write("/*------------------------------------------*/\n");
      out.write("/*--------- Dark Menu Styles Begin ---------*/\n");
      out.write("/*------------------------------------------*/\n");
      out.write("\n");
      out.write("        /* Main Dark Menu Unordered List First Level Style */\n");
      out.write("        ul.dark_menu {\n");
      out.write("            list-style: none;\n");
      out.write("            padding: 0;\n");
      out.write("            font-family: Arial;\n");
      out.write("            font-size: 14px;\n");
      out.write("            line-height: 14px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        /* Clears all floated List Items */\n");
      out.write("        ul.dark_menu:after {\n");
      out.write("            content: \"\";\n");
      out.write("            clear: both;\n");
      out.write("            display: block;\n");
      out.write("            overflow: hidden;\n");
      out.write("            visibility: hidden;\n");
      out.write("            width: 0;\n");
      out.write("            height: 0;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("            /* First Level List Items Style */\n");
      out.write("            ul.dark_menu li {\n");
      out.write("                float: left;\n");
      out.write("                margin: 0 0 0 10px;\n");
      out.write("                position: relative;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* First List Item in First Level Style */\n");
      out.write("            ul.dark_menu li:first-child {\n");
      out.write("                margin: 0;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("                /* List Items Links Style */\n");
      out.write("                ul.dark_menu li a, ul.dark_menu li a:link {\n");
      out.write("                    color: white;\n");
      out.write("                    text-decoration: none;\n");
      out.write("                    display: block;\n");
      out.write("                    padding: 10px 26px;\n");
      out.write("                    \n");
      out.write("                    /* Text Shadow */\n");
      out.write("                    text-shadow: 0 1px 0 #4b433e;\n");
      out.write("                    \n");
      out.write("                    /* Gradient Background */\n");
      out.write("                    background: #362f2c; /* Old browsers */\n");
      out.write("                    background: -moz-linear-gradient(top, #362f2c 0%, #282321 100%); /* FF3.6+ */\n");
      out.write("                    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#362f2c), color-stop(100%,#282321)); /* Chrome,Safari4+ */\n");
      out.write("                    background: -webkit-linear-gradient(top, #362f2c 0%,#282321 100%); /* Chrome10+,Safari5.1+ */\n");
      out.write("                    background: -o-linear-gradient(top, #362f2c 0%,#282321 100%); /* Opera11.10+ */\n");
      out.write("                    background: -ms-linear-gradient(top, #362f2c 0%,#282321 100%); /* IE10+ */\n");
      out.write("                    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#362f2c', endColorstr='#282321',GradientType=0 ); /* IE6-9 */\n");
      out.write("                    background: linear-gradient(top, #362f2c 0%,#282321 100%); /* W3C */\n");
      out.write("\n");
      out.write("                    /* Border Radius */\n");
      out.write("                    -webkit-border-radius: 4px;\n");
      out.write("                    -moz-border-radius: 4px;\n");
      out.write("                    border-radius: 4px;\n");
      out.write("\n");
      out.write("                    /* Box Shadows */\n");
      out.write("                    -webkit-box-shadow: inset 0 1px 0 #564b46,\n");
      out.write("                                       0 1px 1px #181514;\n");
      out.write("                    -moz-box-shadow: inset 0 1px 0 #564b46,\n");
      out.write("                                     0 1px 1px #181514;\n");
      out.write("                    box-shadow: inset 0 1px 0 #564b46,\n");
      out.write("                                0 1px 1px #181514;\n");
      out.write("\n");
      out.write("                    /* Transition Effect */\n");
      out.write("                    -webkit-transition: all 1s ease;\n");
      out.write("\t                -moz-transition: all 1s ease;\n");
      out.write("\t                -o-transition: all 1s ease;\n");
      out.write("\t                -ms-transition: all 1s ease;\n");
      out.write("\t                transition: all 1s ease;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                    /* List Items Links Hover State Style */\n");
      out.write("                    ul.dark_menu li a:hover {\n");
      out.write("                        color: #73635e;\n");
      out.write("\n");
      out.write("                        /* Text Shadow */\n");
      out.write("                        text-shadow: 0 1px 1px #000;\n");
      out.write("\n");
      out.write("                        /* Gradient Background */\n");
      out.write("                        background: highlighttext; /* Old browsers */\n");
      out.write("                        background: -moz-linear-gradient(top, #282321 0%, #362f2c 99%, #362f2c 100%); /* FF3.6+ */\n");
      out.write("                        background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#282321), color-stop(99%,#362f2c), color-stop(100%,#362f2c)); /* Chrome,Safari4+ */\n");
      out.write("                        background: -webkit-linear-gradient(top, #282321 0%,#362f2c 99%,#362f2c 100%); /* Chrome10+,Safari5.1+ */\n");
      out.write("                        background: -o-linear-gradient(top, #282321 0%,#362f2c 99%,#362f2c 100%); /* Opera11.10+ */\n");
      out.write("                        background: -ms-linear-gradient(top, #282321 0%,#362f2c 99%,#362f2c 100%); /* IE10+ */\n");
      out.write("                        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#282321', endColorstr='#362f2c',GradientType=0 ); /* IE6-9 */\n");
      out.write("                        background: linear-gradient(top, #282321 0%,#362f2c 99%,#362f2c 100%); /* W3C */\n");
      out.write("\n");
      out.write("                        /* Transition Effect */\n");
      out.write("                        -webkit-transition: all 1s ease;\n");
      out.write("\t                    -moz-transition: all 1s ease;\n");
      out.write("\t                    -o-transition: all 1s ease;\n");
      out.write("\t                    -ms-transition: all 1s ease;\n");
      out.write("\t                    transition: all 1s ease;\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("                    /* List Items Links Active and Selected State Style */\n");
      out.write("                    ul.dark_menu li a.selected, ul.dark_menu li a:active {\n");
      out.write("                        color: white;\n");
      out.write("                        background: darkcyan;\n");
      out.write("\n");
      out.write("                        /* Text Shadow */\n");
      out.write("                        text-shadow: 0 1px 1px #000;\n");
      out.write("\n");
      out.write("                        /* Box Shadows */\n");
      out.write("                        -webkit-box-shadow: inset 0 2px 4px rgba(0,0,0,0.6),\n");
      out.write("                                           0 1px 0 #5e524f;\n");
      out.write("                        -moz-box-shadow: inset 0 2px 4px rgba(0,0,0,0.6),\n");
      out.write("                                         0 1px 0 #5e524f;\n");
      out.write("                        box-shadow: inset 0 2px 4px rgba(0,0,0,0.6),\n");
      out.write("                                    0 1px 0 #5e524f;\n");
      out.write("                        \n");
      out.write("                        /* Transition Effect */\n");
      out.write("                        -webkit-transition: all 1s ease;\n");
      out.write("\t                    -moz-transition: all 1s ease;\n");
      out.write("\t                    -o-transition: all 1s ease;\n");
      out.write("\t                    -ms-transition: all 1s ease;\n");
      out.write("\t                    transition: all 1s ease;\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("                    /* Sub Menu Unordered List Second Level Style */\n");
      out.write("                    ul.dark_menu li ul {\n");
      out.write("                        display: none;\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("                    /* Before Second Level Unordered List Style */\n");
      out.write("                    ul.dark_menu li ul:before {\n");
      out.write("                        content: \" \";\n");
      out.write("                        position: absolute;\n");
      out.write("                        display: block;\n");
      out.write("                        z-index: 1500;\n");
      out.write("                        left: 0;\n");
      out.write("                        top: -10px;\n");
      out.write("                        height: 10px;\n");
      out.write("                        width: 100%;\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("                    /* Sub Menu Unordered List Second Level Style\n");
      out.write("                        When Parent List Item is Hovered */\n");
      out.write("                    ul.dark_menu li:hover ul {\n");
      out.write("                        position: absolute;\n");
      out.write("                        display: block;\n");
      out.write("                        z-index: 1000;\n");
      out.write("                        left:8px;\n");
      out.write("                        top: 44px;\n");
      out.write("                        /*padding: 5px 0;*/\n");
      out.write("                        list-style: none;\n");
      out.write("                        background:black;\n");
      out.write("                        height: auto;\n");
      out.write("                        \n");
      out.write("\n");
      out.write("                        /* Box Shadows */\n");
      out.write("                        -webkit-box-shadow: inset 0 2px 4px rgba(0,0,0,0.6),\n");
      out.write("                                           0 1px 0 #5e524f;\n");
      out.write("                        -moz-box-shadow: inset 0 2px 4px rgba(0,0,0,0.6),\n");
      out.write("                                         0 1px 0 #5e524f;\n");
      out.write("                        box-shadow: inset 0 2px 4px rgba(0,0,0,0.6),\n");
      out.write("                                    0 1px 0 #5e524f;\n");
      out.write("\n");
      out.write("                        /* Border Radius */\n");
      out.write("                        -webkit-border-radius: 4px;\n");
      out.write("                        -moz-border-radius: 4px;\n");
      out.write("                        border-radius: 4px;\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("                        /* Second Level Menu List Items Style */\n");
      out.write("                        ul.dark_menu li ul li {\n");
      out.write("                            float: none;\n");
      out.write("                            margin: 0 10px;                            \n");
      out.write("                            border-bottom: 1px solid #191614;\n");
      out.write("                            border-top: 1px solid #3a3230;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        /* First List Item in Second Level Menu Style */\n");
      out.write("                        ul.dark_menu li ul li:first-child {\n");
      out.write("                            margin: 0 10px;\n");
      out.write("                            border-top: 0 none;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        /* Last List Item in Second Level Menu Style */\n");
      out.write("                        ul.dark_menu li ul li:last-child {\n");
      out.write("                            border-bottom: 0 none;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        /* Second Level List Items Links Style */\n");
      out.write("                        ul.dark_menu li ul li a, ul.dark_menu li ul li a:link {\n");
      out.write("                            color: yellowgreen;\n");
      out.write("                            display: block;\n");
      out.write("                            background: transparent none;\n");
      out.write("                            padding: 10px 20px 10px 5px;\n");
      out.write("                            white-space: nowrap;\n");
      out.write("\n");
      out.write("                            /* Text Shadow */\n");
      out.write("                            text-shadow: 0 1px 2px #000;\n");
      out.write("                                                        \n");
      out.write("                            /* Box Shadows */\n");
      out.write("                            -webkit-box-shadow: 0 0 0 rgba(0,0,0,0);\n");
      out.write("                            -moz-box-shadow: 0 0 0 rgba(0,0,0,0);\n");
      out.write("                            box-shadow: 0 0 0 rgba(0,0,0,0);\n");
      out.write("\n");
      out.write("                            /* Border Radius */\n");
      out.write("                            -webkit-border-radius: 0px;\n");
      out.write("                            -moz-border-radius: 0px;\n");
      out.write("                            border-radius: 0px;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        /* Second Level List Items Links Hover State Style */\n");
      out.write("                        ul.dark_menu li ul li a:hover {\n");
      out.write("                            text-decoration: none;\n");
      out.write("                            \n");
      out.write("                            color: highlight;\n");
      out.write("                            text-shadow: 1px 2px  #121214;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("/*----------------------------------------*/\n");
      out.write("/*--------- Dark Menu Styles End ---------*/\n");
      out.write("/*----------------------------------------*/\n");
      out.write("    </style>\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("    function lod(){\n");
      out.write("        var g=document.myform.doc;\n");
      out.write("        if(g[0].checked){\n");
      out.write("           \n");
      out.write("             document.getElementById(\"name\").style.display=\"block\";\n");
      out.write("        document.getElementById(\"namebtn\").style.display=\"block\";\n");
      out.write("        document.getElementById(\"name1\").style.display=\"none\";\n");
      out.write("        document.getElementById(\"namebtn1\").style.display=\"none\";\n");
      out.write("        }else if(g[1].checked){\n");
      out.write("            document.getElementById(\"name\").style.display=\"none\";\n");
      out.write("        document.getElementById(\"namebtn\").style.display=\"none\";\n");
      out.write("        document.getElementById(\"name1\").style.display=\"block\";\n");
      out.write("        document.getElementById(\"namebtn1\").style.display=\"block\";\n");
      out.write("        }\n");
      out.write("       \n");
      out.write("    }\n");
      out.write("    \n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("    <body onload=\"lod()\">\n");
      out.write("<div id=\"wrapper\">\n");
      out.write("    ");

        session.setAttribute("Errmsg", "");
    
      out.write("\n");
      out.write("    <div id=\"header\" >\n");
      out.write("\t\t<div id=\"logo\">\n");
      out.write("                   <a href=\"#\" >Secure Sharing Of Health Records in Cloud</a>\n");
      out.write("\t\t\t<p><a href=\"#\">Using Attribute Based Encryption</a></p>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<!-- end #header -->\n");
      out.write("\t<div id=\"menu\">\n");
      out.write("\t\t<ul class=\"dark_menu\">\n");
      out.write("\t\t\t<li><a  href=\"#\" class=\"selected\">Home</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">Registration</a>\n");
      out.write("                        <ul>\n");
      out.write("                                <li><a href=\"doc_registration.jsp\">Doctor</a></li>\n");
      out.write("                                <li><a href=\"recep_registration.jsp\">Receptionist</a></li>\n");
      out.write("                                <li><a href=\"pharm_registration.jsp\">Pharmacist</a></li></ul>\n");
      out.write("                        </li>\n");
      out.write("\t\t\t<li ><a href=\"add_medicine.jsp\">Medicine</a></li>\n");
      out.write("\t\t\t<li><a href=\"add_emergency_doc.jsp\">Emergency</a></li>\n");
      out.write("                        \n");
      out.write("                        <li><a href=\"#\">Management</a><ul>\n");
      out.write("                                <li><a href=\"doc_management.jsp\">Doctor</a></li>\n");
      out.write("                                \n");
      out.write("                                <li><a href=\"phar_management.jsp\">Pharmacist</a></li>\n");
      out.write("                            <li><a href=\"rec_management.jsp\">Receptionist</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                        <li><a href=\"change_add_pass.jsp\">Change Password</a></li>\n");
      out.write("\t\t\t<li><a href=\"logout.jsp\">Logout</a></li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t</div>\n");
      out.write("\t<!-- end #menu -->\n");
      out.write("\t<div id=\"page\">\n");
      out.write("\t\t<div id=\"content\">\n");
      out.write("                    <div id=\"banner\"><img style=\"width: 550px; height: 250px;\" src=\"images/privacy.jpg\" alt=\"\" /></div>\n");
      out.write("\t\t\t<div class=\"post\">\n");
      out.write("\t\t\t\t<h2 class=\"title\"><a href=\"#\">Privacy Preserving</a></h2>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div style=\"clear: both;\">&nbsp;</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<!-- end #content -->\n");
      out.write("\t\t<div id=\"sidebar\">\n");
      out.write("\t\t\t<ul>\n");
      out.write("\t\t\t\t<li>\n");
      out.write("                                    ");

                                        String naam="";
                                            try{
                                               naam=session.getAttribute("username").toString().toUpperCase();
                                            }catch(Exception e){} 
                                    
      out.write("\n");
      out.write("                                    <h2>Welcome ");
      out.print(naam);
      out.write("</h2>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t<li>\n");
      out.write("                                    <br><br><br><br><br><br>\n");
      out.write("                                    <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Find Doctor</h2>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t</ul>\n");
      out.write("                                        \n");
      out.write("                    <div style=\"width:270px; height:60px; background: white;padding:40px; border: 1px #1e94b2 solid; position: absolute;left:815px; top:550px;\">\n");
      out.write("           \n");
      out.write("            <form name=\"myform\" method=\"post\" action=\"action/find_doc.jsp\">\n");
      out.write("                <input type=\"radio\" name=\"doc\" id=\"rd1\" value=\"nam\" onclick=\"lod();\"/>By Name. &ensp;&ensp;&ensp;&ensp;<input type=\"text\" name=\"name\" id=\"name\" style=\"display: none;position: absolute;top:40px; left: 140px;\"/><input type=\"image\" id=\"namebtn\" src=\"images/search.gif\" style=\"display: none; height: 24px;width: 24px; position: absolute;top:40px; left: 320px;\"/><br>\n");
      out.write("                    <input type=\"radio\" name=\"doc\" id=\"rd2\" value=\"spec\" onclick=\"lod();\"/>By Specialty&ensp;&ensp;<select name=\"name1\"id=\"name1\" style=\"background-color: white; display: none;position: absolute;top: 63px; left: 140px; width: 185px; height: 25px;\">\n");
      out.write("                     ");

                         String sql="select distinct department from dep_details";
                         String dep="";
                         DB.DBConnection dbc=new DBConnection();
                         ResultSet rs=dbc.getData(sql);
                         while(rs.next()){
                             dep=rs.getString("department");
                        
                     
      out.write("\n");
      out.write("                     <option>");
      out.print(dep);
      out.write("</option>\n");
      out.write("                     ");
 }
      out.write("\n");
      out.write("                    </select><input type=\"image\" src=\"images/search.gif\" id=\"namebtn1\" style=\"height: 24px;width: 24px; position: absolute;top:63px; left: 320px; display: none;\"/>\n");
      out.write("            </form>\n");
      out.write("             </div>        \n");
      out.write("\t\t</div>\n");
      out.write("\t\t<!-- end #sidebar -->\n");
      out.write("\t\t<div style=\"clear: both;\">&nbsp;</div>\n");
      out.write("\t</div>\n");
      out.write("        </div>\n");
      out.write("\t<!-- end #page -->\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
