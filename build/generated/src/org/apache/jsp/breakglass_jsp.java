package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class breakglass_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("        <link rel=\"shortcut icon\" href=\"favicon.ico\" />\n");
      out.write("<meta name=\"keywords\" content=\"\" />\n");
      out.write("<meta name=\"description\" content=\"\" />\n");
      out.write("<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>AB-Encryption</title>\n");
      out.write("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />\n");
      out.write("<style>\n");
      out.write("    \n");
      out.write("        #reg\n");
      out.write("        {\n");
      out.write("            height: 155px;\n");
      out.write("            width: 360px;\n");
      out.write("\n");
      out.write("      visibility: visible; position: relative; top:50px; left: 280px; display: block;\n");
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
      out.write("#chu:hover{\n");
      out.write("     -webkit-transform: scale(1.3,1.3);\n");
      out.write("    -moz-transform:scale(1.3,1.3);\n");
      out.write("    opacity: 1;\n");
      out.write("    -webkit-opacity: 1;\n");
      out.write("    -moz-opacity: 1;\n");
      out.write("    cursor: wait;\n");
      out.write("/*    transform: rotateX(130deg);\n");
      out.write("-ms-transform: rotateX(130deg);  IE 9 \n");
      out.write("-webkit-transform: rotateX(130deg);  Safari and Chrome */\n");
      out.write("}\n");
      out.write("        \n");
      out.write("</style>\n");
      out.write("<script>\n");
      out.write("    function read(){\n");
      out.write("        document.getElementById(\"erm\").style.display=\"none\";\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("  \n");
      out.write("<div id=\"wrapper\">\n");
      out.write("    <div id=\"header\" >\n");
      out.write("\t\t<div id=\"logo\">\n");
      out.write("                     \n");
      out.write("                   <a href=\"#\" >Secure Sharing Of Health Records in Cloud</a>\n");
      out.write("\t\t\t<p><a href=\"#\">Using Attribute Based Encryption</a></p>\n");
      out.write("                        \n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<!-- end #header -->\n");
      out.write("      \n");
      out.write("\t\n");
      out.write("\t<!-- end #menu -->\n");
      out.write("        <div id=\"page\" style=\"height: 600px;\">\n");
      out.write("\t\t<div id=\"content\">\n");
      out.write("                    <div id=\"banner\"><img style=\"position: relative; width: 900px; height: 250px;left:-10px; border: moccasin solid thick; border-radius: 15px;\" src=\"images/slide4.jpg\" alt=\"\" /></div>\n");
      out.write("\t\t\t<div class=\"post\">\n");
      out.write("\t\t\t\t");

                                    String msg="";
                                    try{
                                        msg=session.getAttribute("Errmsg").toString();
                                    }catch(Exception e){
                                        System.err.println(e);
                                    }
                                
      out.write("\t\t\n");
      out.write("                                <div class=\"entry\">\n");
      out.write("                                    <div id=\"reg\">\n");
      out.write("                                        <form action=\"action/break_action.jsp\">\n");
      out.write("                                        <u><h2 style=\"left: 100px; position: relative;\">sign in</h2></u> \n");
      out.write("                                        <table>\n");
      out.write("                                              \n");
      out.write("                                              <tr><td>\n");
      out.write("                                        <label for=\"user\">Username:</label></td>\n");
      out.write("                                                <td><input type=\"text\" name=\"user\" placeholder=\"username\" required=\"required\" onclick=\"read()\"/></td>\n");
      out.write("                                                <td><span id=\"erm\" style=\"color: red\">");
      out.print(msg);
      out.write("</span></td></tr>\n");
      out.write("                                            <tr><td> <label for=\"pass\">Password:</label></td>\n");
      out.write("                                                <td> <input type=\"password\" name=\"pass\" placeholder=\"password\" required=\"required\"/></td><td><font style=\"color: red\"></font></td></tr>\n");
      out.write("                                            <tr><td> </td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id=\"chu\" type=\"image\" src=\"images/New One.png\" width=\"100px\" value=\"submit\">\n");
      out.write("                                                        \n");
      out.write("                                                </td><td></td></tr>\n");
      out.write("                                        </table>\n");
      out.write("                                    </form>\n");
      out.write("                                         \n");
      out.write("                                        </div>\n");
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
