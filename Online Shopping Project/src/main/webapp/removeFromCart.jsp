
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>


<%

	String email=session.getAttribute("email").toString();
	String id=request.getParameter("id");
	
	try{
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		st.executeUpdate("delete from cart where email ='"+email+"' and product_id='"+id+"' and address is null ");
		response.sendRedirect("myCart.jsp?msg=removed");
	}catch(Exception e){
		System.out.println(e);
		response.sendRedirect("myCart.jsp?msg=invalid");

	}

%>