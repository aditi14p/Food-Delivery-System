<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="signupAction.jsp" method="post">
      <input type="text" name="name" placeholder="Enter Name" required>
      <input type="email" name="email" placeholder="Enter Email" required>
      <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
      <select name="securityQuestion" required>
        <option value="What was your first car?">What was your first car?</option>
        <option value="What is your favorate pet animal?">What is your favorite pet animal?</option>
        <option value="What is your favorate colour?">What is your favorite color?</option>
        <option value="What is your favorate dish?">What is your favorite dish?</option>
      </select>
      <input type="text" name="answer" placeholder="Enter answer" required>
      <input type="password" name="password" placeholder="password" required>
      <input type="submit" value="sinup" >
    </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg)){
%>

<h1>Successfully Registered</h1>
<%} %>
<%
if("invalid".equals(msg)){
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2>Online Food Delivery</h2>
    <p>The Online food ordering System is the application that allows the users to  online food without going to the restaurant to buy food.</p>
  </div>
</div>

</body>
</html>