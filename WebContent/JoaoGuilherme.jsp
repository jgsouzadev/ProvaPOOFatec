<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
h5 {
	text-align: center;
}
</style>
</head>
<body>

	<div>
		<%@ include file="WEB-INF/shared/header.jspf"%>
		<%
		HashMap<String, String> hashMapAulas = new HashMap<>();
		hashMapAulas.put("Banco de Dados", "Simone Maria");
		hashMapAulas.put("Linguagem de Programa��o IV", "Paulo Roberto Tazinazo");
		hashMapAulas.put("Engenharia de Software III", "Renata Neves Ferreira");
		hashMapAulas.put("Programa��o Orientada a Objetos", "Ricardo Pupo Larguesa");
		hashMapAulas.put("Sistemas Operacionais II", "F�bio Pessoa de S�");
		hashMapAulas.put("Ingl�s IV", "Graziela Pigatto Bohn");
		hashMapAulas.put("Met�dologia da Pesquisa Tecnico Cientifica", "Sabrina Martins Boto");

		if (usuarioLogado) {
		%>
		 
		<h5>Jo�o Guilherme de Souza</h5>
		<h5>RA: 1290482013051</h5>
		<h5>Semestre de ingress�o: 1�</h5>
		<h5>
			<a href="https://github.com/jgsouzadev">Visualizar Github</a>
		</h5>



		<table class="striped centered">
			<tr>
				<td>Professor</td>
				<td>Mat�ria</td>
			</tr>

			<%
			for (String key : hashMapAulas.keySet()) {
			%>
			<tr>
				<td><%=hashMapAulas.get(key)%></td>
				<td><%=key%></td>
			</tr>

			<%
			}
			%>
		</table>
		<% } else { %>
		
		<h1 class="red darken"> Acesso n�o autorizado. Fa�a Login</h1>
		
		<% } %>
	</div>
</body>
</html>