<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- fonawesome -->
<script src="https://kit.fontawesome.com/fb651eed8c.js"
	crossorigin="anonymous"></script>
<!-- bootstrap CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<!-- bootstrap icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link rel="stylesheet" href="./assets/css/style.css">
<link rel="shortcut icon" href="./assets/img/favicon.ico"
	type="image/x-icon">
<title>VivaVia Travel</title>
</head>
<body>
	<header>
		<jsp:include page="../../components/headerCrud.jsp">
			<jsp:param name="pageName" value="Clientes" />
			<jsp:param name="clientesActive" value="active" />
			<jsp:param name="passagensActive" value="" />
			<jsp:param name="reservasActive" value="" />
		</jsp:include>
	</header>
	<main>
		<div class="container-fluid py-5" id="div-form-contato">
			<form action="./cliente-update"
				class="form-control d-grid gap-4 mx-auto p-3">
				<input type="hidden" name="id" value="${cliente.idCliente}">
				<div>
					<h1 style="font-size: 1.3em; text-align: center;">Atualizar
						dados do cliente</h1>
					<p></p>
				</div>
				<div class="">
					<label for="f-nome">Nome</label> <input type="text"
						class="form-control" id="f-nome" name="nome"
						value="${cliente.nomeCliente}">
				</div>
				<div class="">
					<label for="f-email">Email</label> <input type="email"
						class="form-control" id="f-email" name="email"
						value="${cliente.emailCliente}">
				</div>
				<div class="">
					<label for="f-tel">Celular</label> <input type="tel"
						class="form-control" id="f-tel" name="telefone"
						value="${cliente.telefoneCliente}">
				</div>
				<div class="">
					<label for="f-senha">Senha</label> <input type="text"
						class="form-control" id="f-senha" name="senha"
						value="${cliente.senhaCliente}">
				</div>
				<button type="submit" class="btn btn-primary">Salvar</button>
				<a class="btn btn-primary" href="./cliente">Cancelar</a>
			</form>
		</div>
	</main>
	<footer>
		<jsp:include page="../../components/footer.jsp">
			<jsp:param name="srcLogo" value="./assets/img/logo.png" />
		</jsp:include>
	</footer>
	<script src="scripts/validador.js"></script>
</body>
</html>