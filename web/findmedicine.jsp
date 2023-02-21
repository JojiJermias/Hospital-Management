<%-- 
    Document   : findmedicine
    Created on : Jun 17, 2016, 11:27:08 AM
    Author     : IVS PC5
--%>

<%@page import="java.lang.String"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="med">
            <table>
                <tr><th>Name</th><th>Amount</th><th>Stock</th><th>Select</th></tr>
             <%
            String ss=request.getParameter("q");
            DBConnection dbc=new DBConnection();
            String sql="select * from medicine where name like '"+ss+"%'";
            ResultSet rs=dbc.getData(sql);
            while(rs.next()){               
                %>
                <tr>
                    <td><%=rs.getString("name")%></td><td><input type="text" value="0" size="3" name="count[]"/></td><td><input type="text" value="<%=rs.getInt("stock")%>" size="3" id="count1"/></td><td> <input type="checkbox" value="<%=rs.getString("name")%>" onclick="if(this.checked){hai(this.value);}else{hello(this.value);}"></td></tr>
                <%             
            }
            %></table>
        </form>
    </body>
</html>
