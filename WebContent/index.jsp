<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>João Guilherme</title>
</head>
<body>	
	<%@ include file="WEB-INF/shared/header.jspf" %>
	
	<hr>
	<table class="striped centered">
		<% if(usuarioLogado) { %>
		<tr>
			<td style="font-weight:bold"> Usuarios online</td>
		</tr>
		<%
			for(int i = 0; i < usuariosAtivos.size(); i++) {				
		%>
		
		<tr>
			<td> <%= usuariosAtivos.get(i) %> </td>
		</tr>
		
		<% } %>
	</table>
	<% } %>
	<h5 style="text-align:center;">Usuarios ativos no momento: <%= usuariosAtivos.size() %></h5>
</body>
</html>