<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="loginAction.jsp" method="post">
      <input type="email" name="email" placeholder="Email" required>
      <input type="password" name="password" placeholder="Enter password" required>
      <input type="submit" value="login" >
     </form>
     <!----> <h3><a href="signup.jsp">SignUp</a></h3>
       <h3><a href="forgotPassword.jsp">Forgot Password?</a></h3>
       <a href="homePage.jsp">Home</a>
  </div>
  <div class='whysignLogin'>
<%
String msg=request.getParameter("msg");
if("notexist".equals(msg)){
%>

 <h1>Incorrect Username or Password</h1>
<%} %>
<%
if("invalid".equals(msg)){
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2>Online Food Delivery</h2>
    <p>The Online food ordering System is the application that allows the users to order food online food without going to the restaurant to buy food.</p>
  </div>
</div>

</body>
</html>