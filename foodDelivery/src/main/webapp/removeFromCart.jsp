<%@page import="foodDelivery.connectionProvider" %>
<%@page import="java.sql.*" %>
<%
String email=session.getAttribute("email").toString();
String Product_id=request.getParameter("id");
try
{
	Connection con=connectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("delete from cart where email='"+email+"' and product_id='"+Product_id+"' and address is Null");
	response.sendRedirect("myCart.jsp?msg=removed");
}
catch(Exception e)
{
	System.out.println(e);
	}
%>