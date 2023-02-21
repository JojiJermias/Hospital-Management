<%-- 
    Document   : login_action
    Created on : Jun 16, 2016, 3:16:59 PM
    Author     : IVS PC5
--%>


<%@page import="java.sql.ResultSet"%>
 
    <%  try
        {
            String username=request.getParameter("user");
            String name="";
            session.setAttribute("username",username);
            String pass=request.getParameter("pass");
           
            // //JOptionPane.showMessageDialog(null, username+"  "+pass);
            DB.DBConnection db=new DB.DBConnection();
            ResultSet rs=null,rs1=null;
            String sql="select * from login where username='"+username+"' and password='"+pass+"'";
            rs=db.getData(sql);
            if(rs.next())
            {
                String utype=rs.getString("user_type");
                int hos_id=rs.getInt("hospital_id");
                int user_id=rs.getInt("user_id");
                session.setAttribute("hos_id",hos_id);
                session.setAttribute("user_id",user_id);
                session.setAttribute("usertype", utype);
                if(utype.equals("cloudadmin"))
                {
                    response.sendRedirect("../cloud_admin_home.jsp");
                }
                else if(utype.equals("admin"))
                {
                     response.sendRedirect("../hos_admin_home.jsp");
                }
                else if(utype.equals("doctor"))
                {
                    //String ss="select name from doctor where id='"+user_id+"'";
                    response.sendRedirect("../doctor_home.jsp");
                }
                else if(utype.equals("receptionist"))
                {
                    response.sendRedirect("../receptionist_home.jsp");
                }
                else if(utype.equals("pharmacist"))
                {
                    response.sendRedirect("../pharmacist_home.jsp");
                }
                else if(utype.equals("patient"))
                {
                    response.sendRedirect("../patient_home.jsp");
                }
                else
                {                    
                         session.setAttribute("Errmsg", "Account blocked");
                         response.sendRedirect("../index.jsp");
                }
            }
            else
            {
                session.setAttribute("Errmsg", "Invalid Entry");
                response.sendRedirect("../index.jsp");
            }
        }catch(Exception e)
        {
          // //JOptionPane.showMessageDialog(null, e);
        }
    %>