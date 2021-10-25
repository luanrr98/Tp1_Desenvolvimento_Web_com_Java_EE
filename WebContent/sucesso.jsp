<%@page import="java.util.List"%>
<%@page import="br.edu.infnet.repository.UsuarioRepository"%>
<%@page import="br.edu.infnet.model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<meta charset="ISO-8859-1">
<title>Cadastro</title>
</head>
<body>
	<% 
	String nome = (String) request.getAttribute("nomeUsuario");
	String email = (String) request.getAttribute("emailUsuario");
	List<Usuario> usuarios = (List<Usuario>) request.getAttribute("usuarios");
	%>
	<div class="container">
		<form action="cadastro" method="get">
			<h3> O usuário <%=nome%> com o email <%=email%> foi salvo com sucesso!</h3>
			<input type="submit" class="btn btn-primary" value="Voltar" >
		</form>
		
		<hr>
		
		<h4>Listagem de usuários cadastrados (<%=usuarios.size()%>)</h4>
		
		 <table class="table table-striped">
		    <thead>
		      <tr>
		        <th>Nome</th>
		        <th>Email</th>
		      </tr>
		    </thead>
		    <% for(Usuario u : usuarios){%>
			    <tbody>
			      <tr>
			        <td><%=u.getNome()%></td>
			        <td><%=u.getEmail()%></td>
			      </tr>
			    </tbody>
			<% }%>
		
		  </table>
		 

	</div>
	
</body>
</html>