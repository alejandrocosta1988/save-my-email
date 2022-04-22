<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Just Joined!</title>
  
</head>

<body>

  <h1>Thank you very much for joining our list!</h1>
  <p>Here is the information that you entered:</p><br>
  
  <h6>E-mail: </h6><p>${user.email}</p><br>
  <h6>First name: </h6><p>${user.firstName}</p><br>
  <h6>Last name: </h6><p>${user.lastName}</p><br>
  
  <p>To enter a new e-mail, press the return button bellow.</p>
  
  <form action="" method="get">
    <input type="hidden" name="action" value="join">
    <input type="submit" value="Return">
  </form>

</body>
</html>