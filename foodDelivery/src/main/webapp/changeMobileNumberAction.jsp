<%@page import="foodDelivery.connectionProvider" %>
<%@page import="java.sql.*" %>
<%
String email=session.getAttribute("emial").toString();
String mobileNumber=request.getParameter("mobileNumber");
String password=request.getParameter("password");
int check=0;
try{
    Connection con=connectionProvider.getCon();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from users where emial='"+email+"' and password='"+password+"'");
    while(rs.next())
    {
        check=1;
        st.executeUpdate("update users set mobileNumber='"+mobileNumber+"' where email='"+email+"'");
        response.sendRedirect("changeMobileNumber.jsp?msg=done");
    }
    if(check==0)
    response.sendRedirect("changeMobileNumber.jsp?msg=wrong");
}
catch( Exception e)
{

}
%>