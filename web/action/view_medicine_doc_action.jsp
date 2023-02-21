<%-- 
    Document   : view_medicine_doc_action
    Created on : 26 Dec, 2013, 12:04:54 PM
    Author     : IVS PC5
--%>

<%@page import="DB.DBConnection"%>
<%@page import="java.sql.ResultSet"%>

<%
            String filename="";
            String key="";
            ResultSet rs=null,rss=null,rt=null;
            int p_id=Integer.parseInt(session.getAttribute("pat_id").toString());
            session.setAttribute("pat_id",p_id);
           // String name=request.getParameter("p_name");
            int hos_id=Integer.parseInt(session.getAttribute("hos_id").toString());
            String type=session.getAttribute("usertype").toString();
            String ss="select * from patients where id='"+p_id+"'";
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
                deepp=rss.getString("department");
            }
           // //JOptionPane.showMessageDialog(null, deepp+"  "+dep);
            if(cur_hos_id==hos_id){
                ////JOptionPane.showMessageDialog(null, "Okkkkkkkkkk");
                String sss="select * from medicine_file where patient_id='"+p_id+"'";
               // //JOptionPane.showMessageDialog(null, sss);
                rt=dbc.getData(sss);
                int doc_id=0;
                String doc_name="";
                int hosp_id=0;
                String time="";
                String date="";
                int num=0;
                while(rt.next()){
                    filename=rt.getString("filename");
                    //JOptionPane.showMessageDialog(null, filename);
                    key=rt.getString("kee");
                    hosp_id=rt.getInt("hospital_id");
                   doc_name=rt.getString("doctor");
                   doc_id=rt.getInt("doctor_id");
                   time=rt.getTime("time").toString();
                   date=rt.getString("date");
                   num=rt.getInt("number");
                }
                if(filename.equals("")){
                    //JOptionPane.showMessageDialog(null, "No report");
                    response.sendRedirect("../view_pat_1.jsp");
                }else{
                    
                
                if(type.equals("doctor")){
                    if(key.contains("DO")){
                        session.setAttribute("filename",filename);
                        session.setAttribute("kee",key);
                        session.setAttribute("hosp_id",hosp_id);
                         session.setAttribute("re_doc", doc_name);
                        session.setAttribute("re_doc_id",doc_id);
                        session.setAttribute("time",time);
                        session.setAttribute("date",date);
                         session.setAttribute("number",num);
                        response.sendRedirect("medicine_down_action.jsp");
                    }
                     
                    }else{
                         
                     }}
            }else{
                //JOptionPane.showMessageDialog(null, "Access Denied!!!!!!");
                response.sendRedirect("../view_pat.jsp");
            }
        %>