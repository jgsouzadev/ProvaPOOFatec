<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Jo�o Guilherme</title>
</head>
<body>
	<%@ include file="WEB-INF/shared/header.jspf"%>
	
	<%
	List<Integer> numeros = (List<Integer>) session.getAttribute("valores");
	if(usuarioLogado) {
	%>
		
		
	<div>
		<table class="striped centered">
					<tr> 
						<td> <b>Numeros megasena</b></td>
					</tr>
				<% for(int i = 0; i < numeros.size(); i++) { %>
					<tr>
						<td> <%= numeros.get(i) %> </td>
					</tr>
				<% } %>
		</table>
	</div>
	
	<% } else { %>
		<h1 class="red darken"> Acesso n�o autorizado. Fa�a Login</h1>
	<% } %>
</body>
</html>