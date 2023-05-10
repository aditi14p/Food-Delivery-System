<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="forgotPasswordAction.jsp" method="post">
      <input type="email" name="email" placeholder="Enter Email" required>
      <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
      <select name="securityQuestion">
        <option value="What was your first car?">What was your first car?</option>
        <option value="What is your favorate pet animal?">What is your favorite pet animal?</option>
        <option value="What is your favorate colour?">What is your favorite colour?</option>
        <option value="What is your favorate dish?">What is your favorite dish?</option>
		</select>
        <input type="text" name="answer" placeholder="Enter answer" required>
        <input type="password" name="new password" placeholder="Enter your password to set" required>
        <input type="submit" value="save" >
      
    </form>
     
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
    <%
    String msg=request.getParameter("msg");
    if("done".equals(msg))
    {
      %>
      <h1>Password Changed Successfully!</h1>
    
    <% } %>
    <%
    if("invalid".equals(msg))
    {
    %>
    <h1>Some thing Went Wrong! Try Again !</h1>
    <% } %>
    



    <h2>Online Shopping</h2>
    <p>The Online food ordering System is the application that allows the users to  online food without going to the restaurant to buy food.</p>
  </div>
</div>
</body>
</html>