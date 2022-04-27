<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

  <head>
  
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Save My E-mail!</title>
  
  </head>
  
  <body>
  
    <h1>Join our e-mail list by using our JSP version of the join page</h1>
    <p>To join our e-mail list, enter your name and e-mail address below.</p>
    
    <c:if test="${!message.isEmpty()}">
      <p><i>${message}</i></p>
    </c:if>
    
    <form action="emailList" method="post">
      <input type="hidden" name="action" value="add">
    
      <label>E-mail</label>
      <input type="email" name="email" value="${user.email}">
      <label>First name</label>
      <input type="text" name="first-name" value="${user.firstName}">
      <label>Last name</label>
      <input type="text" name="last-name" value="${user.lastName}">
      <label>&nbsp;</label>
      <input type="submit" value="Join Now">
    
    </form>
    
    <footer>
    <%@ page import="java.time.LocalDate" %> <%-- JSP directive. Se aplica ao JSP inteiro. --%>
    <%
      LocalDate localDate = LocalDate.now();
      int currentYear = localDate.getYear();
    %> <%-- JSP scriptlet. Insere um bloco de código Java. --%>
      <p>
        &copy; Copyright <%= currentYear %> Alejandro Costa &amp; Ichthys Systems
      </p> <%-- JSP expression. Exibe o valor em String de uma expressão --%>
    </footer>
  
  </body>

</html>