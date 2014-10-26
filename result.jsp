<%-- 
    Document   : result
    Created on : Oct 25, 2014, 4:24:47 AM
    Author     : am:941
    e-mail     : mpousdra@inf.uth.gr
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Advice Page</title>
    </head>
    <body>
        <h1 align="center">Coffee Recommendations JSP View</h1>
        <p>
        <%
            List styles = (List)request.getAttribute("styles");
            Iterator it = styles.iterator();
            while(it.hasNext()){
                out.print("<br>try: " + it.next());
            }
        %>
    </body>
</html>
