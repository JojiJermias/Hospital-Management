package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import DB.DBConnection;

public final class add_005femergency_005fdoc_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("      <link rel=\"shortcut icon\" href=\"favicon.ico\" />\n");
      out.write("<meta name=\"keywords\" content=\"\" />\n");
      out.write("<meta name=\"description\" content=\"\" />\n");
      out.write("<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>AB-Encryption</title>\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("    \n");
      out.write("        #reg\n");
      out.write("        {\n");
      out.write("            height: 400px;\n");
      out.write("            width: 390px;\n");
      out.write("\n");
      out.write("      visibility: visible; position: relative; top:50px; left: 240px; display: block;\n");
      out.write("        background-color: rgba(0, 0, 0, 0.80);\n");
      out.write("\tborder: 1px solid #cecece;\n");
      out.write("        z-index: 15;\n");
      out.write("\tpadding: 20px;\n");
      out.write("\tcolor: #FFF;\n");
      out.write("        -webkit-box-shadow: 0px 0px 4px #000 inset;\n");
      out.write("\t-moz-box-shadow: 0px 0px 4px #000 inset;\n");
      out.write("\tbox-shadow: 0px 0px 4px #000 inset;\n");
      out.write("\t-webkit-border-radius: 10px;\n");
      out.write("\t-moz-border-radius: 10px;\n");
      out.write("\t-o-border-radius: 10px;\n");
      out.write("\t-ms-border-radius: 10px;\n");
      out.write("\t-khtml-border-radius: 10px;\n");
      out.write("\tborder-radius: 10px;\n");
      out.write("\n");
      out.write("}\n");
      out.write("form {\n");
      out.write("\tfont-family:'Century Gothic', arial, serif;\n");
      out.write("\twidth: 350px;\n");
      out.write("\tmargin-left: 25px;\n");
      out.write("}\n");
      out.write("input, textarea, select {\n");
      out.write("\tfont-family:\"Myriad Pro\", \"Trebuchet MS\", sans-serif;\n");
      out.write("\tbackground-color: #fff;\n");
      out.write("\tborder: 1px solid #ccc;\n");
      out.write("\twidth: 300px;\n");
      out.write("\tmin-height: 30px;\n");
      out.write("\tdisplay: block;\n");
      out.write("\tmargin-bottom: 16px;\n");
      out.write("\tmargin-top: 8px;\n");
      out.write("\t-webkit-border-radius: 5px;\n");
      out.write("\t-moz-border-radius: 5px;\n");
      out.write("\t-o-border-radius: 5px;\n");
      out.write("\t-ms-border-radius: 5px;\n");
      out.write("\t-khtml-border-radius: 5px;\n");
      out.write("\tborder-radius: 5px;\n");
      out.write("\t-webkit-transition: all 0.5s ease-in-out;\n");
      out.write("\t-moz-transition: all 0.5s ease-in-out;\n");
      out.write("\t-o-transition: all 0.5s ease-in-out;\n");
      out.write("\t-ms-transition: all 0.5s ease-in-out;\n");
      out.write("\ttransition: all 0.5s ease-in-out;\n");
      out.write("\tcolor: #fff;\n");
      out.write("}\n");
      out.write("textarea {\n");
      out.write("\tmin-height: 200px;\n");
      out.write("\tresize:none;\n");
      out.write("}\n");
      out.write("input:focus, textarea:focus, select:focus{\n");
      out.write("\t-webkit-box-shadow: 0 0 25px #ccc;\n");
      out.write("\t-moz-box-shadow: 0 0 25px #ccc;\n");
      out.write("\tbox-shadow: 0 0 25px #ccc;\n");
      out.write("}\n");
      out.write("/* The interesting bit */\n");
      out.write("input:not(:focus), textarea:not(:focus), select:not(:focus){\n");
      out.write("\topacity: 0.5;\n");
      out.write("}\n");
      out.write("input:required,textarea:required, select:required{\n");
      out.write(" background: url(\"images/asterisk_orange.png\") no-repeat 280px 7px;\n");
      out.write("}\n");
      out.write("input:valid, textarea:valid, select:valid{\n");
      out.write("background: url(\"images/\") no-repeat 280px 5px;\n");
      out.write("}\n");
      out.write("input:focus:invalid, textarea:focus:invalid, select:focus:invalid{\n");
      out.write(" background: url(\"images/\") no-repeat 280px 7px;\n");
      out.write("}\n");
      out.write("input[type=submit]{\n");
      out.write("\tfont-size: 24px;\n");
      out.write("\tpadding: 10px;\n");
      out.write("\tbackground: none;\n");
      out.write("\topacity: 1.0;\n");
      out.write("}\n");
      out.write("        \n");
      out.write("</style>\n");
      out.write(" <script type=\"text/javascript\">\n");
      out.write("        function validation()\n");
      out.write("      {\n");
      out.write("         // alert(document.getElementById('name1').value);\n");
      out.write("          \n");
      out.write("          if(document.getElementById('name1').value===\"\")\n");
      out.write("              {\n");
      out.write("                 // alert(\"ggg\");\n");
      out.write("          document.getElementById('regdepart').style.display='block';\n");
      out.write("      \n");
      out.write("          return false; \n");
      out.write("\n");
      out.write("          }\n");
      out.write("          else if(document.getElementById('Qualification').value===\"\")\n");
      out.write("              {\n");
      out.write("                 // alert(\"hello\");\n");
      out.write("                  document.getElementById('regdepart').style.display='none';\n");
      out.write("                  document.getElementById('regqual').style.display='block';\n");
      out.write("          return false;\n");
      out.write("          }\n");
      out.write("           else if(document.getElementById('depart').value===\"\")\n");
      out.write("              {\n");
      out.write("                 // alert(\"hello\");\n");
      out.write("                  document.getElementById('regdepart').style.display='none';\n");
      out.write("                  document.getElementById('regqual').style.display='none';\n");
      out.write("                   document.getElementById('regd').style.display='block';\n");
      out.write("          return false;\n");
      out.write("          }\n");
      out.write("        else\n");
      out.write("            {//alert(\"hai\");\n");
      out.write("                return true;\n");
      out.write("            }\n");
      out.write("      }\n");
      out.write("      </script>\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("    function loadXMLDoc()\n");
      out.write("{\n");
      out.write("      var str=document.getElementById(\"name1\").value;\n");
      out.write("    \n");
      out.write("  // alert(str);\n");
      out.write("var xmlhttp;\n");
      out.write("if (window.XMLHttpRequest)\n");
      out.write("  {// code for IE7+, Firefox, Chrome, Opera, Safari\n");
      out.write("  xmlhttp=new XMLHttpRequest();\n");
      out.write("  }\n");
      out.write("else\n");
      out.write("  {// code for IE6, IE5\n");
      out.write("  xmlhttp=new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("  }\n");
      out.write("  \n");
      out.write("      xmlhttp.open(\"POST\",\"nam_1.jsp?q=\"+str,true);\n");
      out.write("  \n");
      out.write("\n");
      out.write("xmlhttp.send();\n");
      out.write("xmlhttp.onreadystatechange=function()\n");
      out.write("  {\n");
      out.write("  if (xmlhttp.readyState==4 && xmlhttp.status==200)\n");
      out.write("    {\n");
      out.write("  //    alert(xmlhttp.responseText);\n");
      out.write("     document.getElementById(\"Qualification\").innerHTML=xmlhttp.responseText;\n");
      out.write(" \n");
      out.write("    }\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("function loadXMLDoc1()\n");
      out.write("{\n");
      out.write("      var str=document.getElementById(\"Qualification\").value;\n");
      out.write("    \n");
      out.write("  // alert(str);\n");
      out.write("var xmlhttp;\n");
      out.write("if (window.XMLHttpRequest)\n");
      out.write("  {// code for IE7+, Firefox, Chrome, Opera, Safari\n");
      out.write("  xmlhttp=new XMLHttpRequest();\n");
      out.write("  }\n");
      out.write("else\n");
      out.write("  {// code for IE6, IE5\n");
      out.write("  xmlhttp=new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("  }\n");
      out.write("  \n");
      out.write("      xmlhttp.open(\"POST\",\"nam.jsp?q=\"+str,true);\n");
      out.write("  \n");
      out.write("\n");
      out.write("xmlhttp.send();\n");
      out.write("xmlhttp.onreadystatechange=function()\n");
      out.write("  {\n");
      out.write("  if (xmlhttp.readyState==4 && xmlhttp.status==200)\n");
      out.write("    {\n");
      out.write("  //    alert(xmlhttp.responseText);\n");
      out.write("     document.getElementById(\"depart\").innerHTML=xmlhttp.responseText;\n");
      out.write(" \n");
      out.write("    }\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("    <body onload=\"loadXMLDoc()\">\n");
      out.write("<div id=\"wrapper\">\n");
      out.write("    <div id=\"header\" >\n");
      out.write("\t\t<div id=\"logo\">\n");
      out.write("                   <a href=\"#\" >Secure Sharing Of Health Records in Cloud</a>\n");
      out.write("\t\t\t<p><a href=\"#\">Using Attribute Based Encryption</a></p>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<!-- end #header -->\n");
      out.write("\t  <div id=\"page\" style=\"height:800px;\">\n");
      out.write("\t\t<div id=\"content\">\n");
      out.write("<!--                    <div id=\"banner\"><img style=\"position: relative; width: 700px; height: 150px;left:100px; border: white solid thick;\" src=\"images/urll.jpeg\" alt=\"\" /></div>-->\n");
      out.write("\t\t\t<div class=\"post\">\n");
      out.write("\t\t\t\t");

                                    int id=Integer.parseInt(session.getAttribute("hos_id").toString());
                                    String msg="";
                                    try{
                                        msg=session.getAttribute("Errmsg").toString();
                                    }catch(Exception e){
                                        System.err.println(e);
                                    }
                                
      out.write("\t\t\n");
      out.write("                                <div class=\"entry\">\n");
      out.write("                                    <div id=\"reg\">\n");
      out.write("                                        <form action=\"action/add_emergency_action.jsp\" name=\"contact\"method=\"post\">\n");
      out.write("                                            <a href=\"hos_admin_home.jsp\"> <img style=\"left: 340px;  position: relative; height: 25px; width: 25px;\" src=\"images/delete-icon.png\"/></a>\n");
      out.write("                                        <u><h2 style=\"left: 75px;top:-15px; position: relative;\">Add Doctor</h2></u> \n");
      out.write("                                           \n");
      out.write("                     <label for=\"name\">Doctor id:</label>\n");
      out.write("                    <select style=\"height: 35px;\" name=\"id\" id=\"name1\" onchange=\"loadXMLDoc();\">\n");
      out.write("                            ");

                                    int dep=0;
                                    String sql="select  id from doctor where doctor.id not in(select doctor_id from emergency_team)and hospital_id='"+id+"'";
                                    DBConnection db=new DBConnection();
                                    ResultSet rs=null;
                                    rs=db.getData(sql);
                                    while(rs.next()){
                                    dep=rs.getInt("id");
                            
      out.write("\n");
      out.write("                            <option>");
      out.print(dep);
      out.write("</option>\n");
      out.write("                               ");
}
      out.write(" \n");
      out.write("                    </select><span name=\"regdepart\" id=\"regdepart\" style=\"display:none;color:red\"><median>invalid Doctor Id</median> </span>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    <label for=\"Qualification\">Doctor Name</label>\n");
      out.write("                    <select style=\"height: 35px;\" name=\"name\"  id=\"Qualification\" onchange=\"loadXMLDoc1();\"> \n");
      out.write("                    </select><span name=\"regqual\" id=\"regqual\" style=\"display:none;color:red\"><median>invalid Name</median> </span>\n");
      out.write("                    \n");
      out.write("                    <label for=\"Qualification\">Department</label>\n");
      out.write("                    <select style=\"height: 35px;\" name=\"department\" id=\"depart\">\n");
      out.write("                    </select><span name=\"regqual\" id=\"regd\" style=\"display:none;color:red\"><median>invalid Department</median> </span>\n");
      out.write("                  \n");
      out.write("                    <input type=\"submit\" value=\"Save\" onclick=\"return validation()\"/>\n");
      out.write("                </form>\n");
      out.write("                                  \n");
      out.write("                                            </div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div style=\"clear: both;\">&nbsp;</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<!-- end #content -->\n");
      out.write("\t\t\n");
      out.write("\t\t<!-- end #sidebar -->\n");
      out.write("\t\t<div style=\"clear: both;\">&nbsp;</div>\n");
      out.write("\t</div>\n");
      out.write("\t<!-- end #page -->\n");
      out.write("</div>\n");
      out.write("    \n");
      out.write("\n");
      out.write("<!-- end #footer -->\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
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
