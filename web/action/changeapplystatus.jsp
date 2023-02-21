
<%@page import="DB.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%
    String id=request.getParameter("id");
    String aid=request.getParameter("aid");
    String todo=request.getParameter("do");
    
    DB.DBConnection db=new DBConnection();
    String sql="update policyapplication set status= "+todo+" where id="+id;
    
    if(db.putData(sql) > 0)
    {
        URL obj = new URL("http://localhost:8080/Insurance/admin/sendtoapproval.jsp");
        HttpURLConnection con = (HttpURLConnection) obj.openConnection();
        con.setRequestMethod("POST");
        con.setRequestProperty("User-Agent", "Mozilla/5.0");       
        String urlParameters = "do=" + todo +"&id=" + aid;
        // For POST only - START
        con.setDoOutput(true);
        OutputStream os = con.getOutputStream();
        os.write(urlParameters.getBytes());
        os.flush();
        os.close();
        // For POST only - END 
        int responseCode = con.getResponseCode();
        
    }
    
    response.sendRedirect("../view_applications.jsp");
    
%>