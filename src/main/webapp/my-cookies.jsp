<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
  <jsp:include page="includes/head.html"></jsp:include>
</head>

<body>

  <h1>Your Cookies</h1>
  
  <table>
  
    <tr>
      <th>Name</th>
      <th>Value</th>
    </tr>
    
    <c:forEach var="c" items="${cookie}">
      <tr>
        <td>${c.value.name}</td>
        <td>${c.value.value}</td>
      </tr>
    </c:forEach>
  
  </table>
  
  <footer>
    <jsp:include page="includes/footer.jsp"></jsp:include>
  </footer>

</body>
</html>