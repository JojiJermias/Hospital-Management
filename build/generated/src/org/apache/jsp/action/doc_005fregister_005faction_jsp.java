package org.apache.jsp.action;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.swing.JOptionPane;
import java.sql.ResultSet;
import DB.DBConnection;

public final class doc_005fregister_005faction_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

             ResultSet rs=null,r=null;
          
           int ran=(int)(Math.random()*100);
           ran+=100;
           int hos_id=Integer.parseInt(session.getAttribute("hos_id").toString());
            String name=request.getParameter("name");
            String dep=request.getParameter("Department");
            String qual=request.getParameter("Qualification");
            String exp=request.getParameter("Experience");
            String mob=request.getParameter("mobilenumber");
            String email=request.getParameter("email");
            DBConnection dbc=new DBConnection();
            String pass=name+ran+mob.substring(3,7);
             String s="select * from doctor where mobile='"+mob+"' or email='"+email+"'";
           r=dbc.getData(s);
           if(r.next()){
               JOptionPane.showMessageDialog(null, "Already exists","Error",JOptionPane.INFORMATION_MESSAGE);
           }else{

           String sql="insert into doctor(name,department,qualification,experience,email,mobile,hospital_id) values ('"+name+"','"+dep+"','"+qual+"','"+exp+"','"+email+"','"+mob+"','"+hos_id+"')";
           int i=dbc.putData(sql);
           
           if(i>0){
              String ssq="select id from doctor where mobile='"+mob+"' or email='"+email+"'";
              rs=dbc.getData(ssq);
              int id=0;
              while(rs.next()){
                  id =rs.getInt("id");
              }
            
               String sql1="insert into login(username,password,user_type,status,hospital_id,user_id) values ('"+name+"','"+pass+"','doctor','0','"+hos_id+"','"+id+"')";
                dbc.putData(sql1);
               String result=Mail.Sendmail.sendMail(email,"Login Details", "You have successfully registered\n Your Username is "+name+" \n Your Password is "+pass+"");
               
             
           } }
           response.sendRedirect("../hos_admin_home.jsp");
            
        
      out.write("\n");
      out.write("    </body>\n");
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
