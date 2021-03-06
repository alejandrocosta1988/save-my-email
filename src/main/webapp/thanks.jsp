<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

  <jsp:include page="includes/head.html"></jsp:include>
  
</head>

<body>

  <h1>Thank you very much for joining our list!</h1>
  <p>Here is the information that you entered:</p><br>
  
  <h3>E-mail: </h3><p>${user.email}</p><br>
  <h3>First name: </h3><p>${user.firstName}</p><br>
  <h3>Last name: </h3><p>${user.lastName}</p><br>
  <h3>Date of submission: </h3><p>${date.toString()}</p><br>
  
  <p>
    To enter a new e-mail, press the return button bellow or just click 
      <a href="emailList?action=join">here</a>.
  </p>
  
  <form action="" method="get">
    <input type="hidden" name="action" value="join">
    <input type="submit" value="Return">
  </form>
  
  <footer>
    <jsp:include page="includes/footer.jsp"></jsp:include>
  </footer>

</body>
</html>