<%@page import="foodDelivery.connectionProvider" %>
<%@page import="java.sql.*" %>

<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String Category=request.getParameter("Category");
String Price=request.getParameter("Price");
String active=request.getParameter("active");
try{
    Connection con=connectionProvider.getCon();
    Statement st=con.createStatement();
    st.executeUpdate("Update Product set name='"+name+"' , Category='"+Category+"' , Price='"+Price+"', active='"+active+"' where id='"+id+"'");
    if(active.equals("No"))
    {
        st.executeUpdate("delete from cart where Product_id='"+id+"' and address is NULL");
    }
    response.sendRedirect("allProductEditProduct.jsp?msg=done");

}
catch(Exception e)
{
    System.out.println(e);
}
%>