 <%-- 
    Document   : view_patient_action
    Created on : 18 Dec, 2013, 11:33:21 AM
    Author     : IVS PC5
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
    </head>
    <body>
        <%
            String filename="";
            String key="";
            int pass=0;
            ResultSet rs=null,rss=null,rt=null,rss1=null;
            int p_id=Integer.parseInt(request.getParameter("pid"));
            session.setAttribute("pat_id",p_id);
            String name=request.getParameter("p_name");
            int hos_id=Integer.parseInt(session.getAttribute("hos_id").toString());
            String type=session.getAttribute("usertype").toString();
            String ss="select * from patients where id='"+p_id+"'";
            int user_id=Integer.parseInt(session.getAttribute("user_id").toString());
            ////JOptionPane.showMessageDialog(null, user_id);
            DBConnection dbc=new DBConnection();
            rs=dbc.getData(ss);
            String dep="";
            int cur_id=0;
            while(rs.next()){
                cur_id=rs.getInt("cur_doc_id");
                dep=rs.getString("department");
            }
            String sql="select * from doctor where id='"+cur_id+"'";
            rss=dbc.getData(sql);
            int cur_hos_id=0;
            String deepp="";
            while(rss.next()){
                cur_hos_id=rss.getInt("hospital_id");
               // deepp=rss.getString("department");
            }
            if(type.equals("doctor")){
                  String sql11="select * from doctor where id='"+user_id+"'";
            rss1=dbc.getData(sql11);
                       while(rss1.next()){
                //cur_hos_id=rss.getInt("hospital_id");
               deepp=rss1.getString("department");
            }
                        String so="select * from emergency_team where doctor_id='"+user_id+"'";
                        ResultSet rs1=dbc.getData(so);
                        if(rs1.next()){
                            pass=1;
                        }
                        
            }
           
          // //JOptionPane.showMessageDialog(null, deepp+"  "+dep);
            if((cur_hos_id==hos_id)){
               
               // //JOptionPane.showMessageDialog(null, "Okkkkkkkkkk");
                String sss="select * from personal_file where patient_id='"+p_id+"'";
               // //JOptionPane.showMessageDialog(null, sss);
                rt=dbc.getData(sss);
                if(rt.next()){
                    filename=rt.getString("filename");
                    ////JOptionPane.showMessageDialog(null, filename);
                    key=rt.getString("kee");
                    if(type.equals("doctor")&&deepp.equals(dep)){               
                    if(key.contains("DO")){
                       // //JOptionPane.showMessageDialog(null, deepp+"  "+dep);
                        session.setAttribute("filename",filename);
                        session.setAttribute("kee",key);
                        response.sendRedirect("file_down_action.jsp");
                    }
                     }else if(type.equals("receptionist")){
                        if(key.contains("RC")){
                        session.setAttribute("filename",filename);
                        session.setAttribute("kee",key);
                        response.sendRedirect("file_down_action.jsp");
                    }
                    }else if(pass==1){
                         ////JOptionPane.showMessageDialog(null,pass+"  emergency");
                         session.setAttribute("filename",filename);
                        session.setAttribute("kee",key);
                        response.sendRedirect("file_down_action.jsp");
                    }
                     else{
                        // //JOptionPane.showMessageDialog(null, "Access Denied!!!!!!");
                          response.sendRedirect("../doctor_home.jsp");
                     }
                }
               else if(type.equals("doctor")){
                ////JOptionPane.showMessageDialog(null, "No Report!!!!!!");
                response.sendRedirect("../view_pat.jsp");
                }else{
                    // //JOptionPane.showMessageDialog(null, "No Report!!!!!!");
                response.sendRedirect("../view_pat_2.jsp");
                }
            }else if(type.equals("doctor")){
                ////JOptionPane.showMessageDialog(null, "Access Denied!!!!!!");
                response.sendRedirect("../view_pat.jsp");
            }else{
                 ////JOptionPane.showMessageDialog(null, "Access Denied!!!!!!");
                response.sendRedirect("../view_pat_2.jsp");
            }
        %>
    </body>
</html>
