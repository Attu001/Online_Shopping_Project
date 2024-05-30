<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/messageUs.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body>

<div style="color: white; text-align: center; font-size: 30px;">Message Us <i class='fas fa-comment-alt'></i></div>
<%
	String msg=request.getParameter("msg");

	if("done".equals(msg)){
%>
<h3 style="text-align:center; color:yellow;">Message successfully sent. Our team will contact you soon!</h3>
<%}
	
	if("invalid".equals(msg)){

	%>
<h3 style="text-align:center; ">Some thing Went Wrong! Try Again!</h3>

<%} %>
<form action="messageUsAction.jsp" method="post">
<input type="text" name="subject" class="input-style" required placeholder="Enter subject">
<br><hr>
	
<textarea class="input-style" name="body" placeholder="Enter your message here" required rows="2" cols="4"></textarea>
	<button type="submit" class="input-style">send</button>
</form>

<br><br><br>
</body>
</html>