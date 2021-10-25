<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>Cadastro</title>
</head>
<body>
	<div class="container">

		<form action="cadastro" method="post">
			<div class="form-group">
		      <label>Nome:</label>
		      <input type="text" class="form-control" placeholder="Infomer seu nome" name="nome" required>
    		</div>
			
			<div class="form-group">
		      <label>Email:</label>
		      <input type="email" class="form-control" placeholder="Infomer seu email" name="email" required>
    		</div>
			
			<div class="form-group">
		      <label>Senha:</label>
		      <input type="password" class="form-control" placeholder="Infomer sua senha" name="senha" required>
    		</div>
			
			<input type="submit" value="Cadastrar" class="btn btn-primary">	
		</form>
	</div>
	
	
</body>
</html>