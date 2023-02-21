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
            ResultSet rs=null,rss=null,rt=null;
            int p_id=Integer.parseInt(request.getParameter("pid"));
            session.setAttribute("pat_id",p_id);
            String name=request.getParameter("p_name");
            int hos_id=Integer.parseInt(session.getAttribute("hos_id").toString());
            String type=session.getAttribute("usertype").toString();
            String ss="select cur_doc_id from patients where id='"+p_id+"'";
            DBConnection dbc=new DBConnection();
            rs=dbc.getData(ss);
            int cur_id=0;
            while(rs.next()){
                cur_id=rs.getInt("cur_doc_id");
            }
            String sql="select hospital_id from doctor where id='"+cur_id+"'";
            rss=dbc.getData(sql);
            int cur_hos_id=0;
            while(rss.next()){
                cur_hos_id=rss.getInt("hospital_id");
            }
            if(cur_hos_id==hos_id){
                ////JOptionPane.showMessageDialog(null, "Okkkkkkkkkk");
                String sss="select * from medicine_file where patient_id='"+p_id+"'";
               // //JOptionPane.showMessageDialog(null, sss);
                 int doc_id=0;
                String doc_name="";
                int hosp_id=0;
                String time="";
                String date="";
                int num=0;
                rt=dbc.getData(sss);
                while(rt.next()){
                    filename=rt.getString("filename");
                    ////JOptionPane.showMessageDialog(null, filename);
                    key=rt.getString("kee");  
                    //JOptionPane.showMessageDialog(null, filename+",,,,,,"+key);
                    hosp_id=rt.getInt("hospital_id");
                   doc_name=rt.getString("doctor");
                   doc_id=rt.getInt("doctor_id");
                   time=rt.getTime("time").toString();
                   date=rt.getString("date");
                    num=rt.getInt("number");
                }
                if(key.contains("PH")){
                        session.setAttribute("filename",filename);
                        session.setAttribute("kee",key);
                        session.setAttribute("hosp_id",hosp_id);
                         session.setAttribute("re_doc", doc_name);
                        session.setAttribute("re_doc_id",doc_id);
                        session.setAttribute("time",time);
                        session.setAttribute("date",date);
                        session.setAttribute("number",num);
                        response.sendRedirect("medicine_down_action.jsp");
                    }else{
                    //JOptionPane.showMessageDialog(null, "No Prescriptions!!!!!!");
                    System.out.println("no prescriptions");
                    response.sendRedirect("../view_medicine.jsp");
                }
                
            }else{
                //JOptionPane.showMessageDialog(null, "Access Denied!!!!!!");
                System.out.println("access denied");
                response.sendRedirect("../view_medicine.jsp");
            }
        %>
    </body>
</html>
