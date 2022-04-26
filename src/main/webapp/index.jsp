<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    
    <p><i>${message}</i></p>
    <form action="emailList" method="post">
      <input type="hidden" name="action" value="add">
    
      <label>E-mail</label>
      <input type="email" name="email" value="${user.email}" required>
      <label>First name</label>
      <input type="text" name="first-name" value="${user.firstName}" required>
      <label>Last name</label>
      <input type="text" name="last-name" value="${user.lastName}" required>
      <label>&nbsp;</label>
      <input type="submit" value="Join Now">
    
    </form>
  
  </body>

</html>