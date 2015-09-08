<%-- 
    Document   : newjsp
    Created on : Apr 6, 2015, 8:34:37 PM
    Author     : saleh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored ="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <body>
        <h1>Hello!  The time is now <%= new java.util.Date() %></h1>
        <h1>EL sample</h1>
        <%session.setAttribute("sesh", session);%>
        <p>${sesh.servletContext.serverInfo}</p>
        <p>the value of the request scope object is</p>
        <%session.setAttribute("eyy", "wakaflocka");%>
        <%session.setAttribute("lmao", "A$AP ROCKY");%>
        <h1>Track JSTL</h1>
        <table>
        <c:forEach var="p" items="${sessionScope}">
            <tr>
                <td><c:out value="${p.key}"/></td>
                <td><c:out value="${p.value}"/></td>
            </tr>
        </c:forEach>
        </table>
    </body>
</html>
