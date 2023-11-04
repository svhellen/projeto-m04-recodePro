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
	<header class="row">
		<jsp:include page="../../components/headerCrud.jsp">
			<jsp:param name="pageName" value="Reservas" />
			<jsp:param name="clientesActive" value="" />
			<jsp:param name="passagensActive" value="" />
			<jsp:param name="reservasActive" value="active" />
		</jsp:include>
	</header>
	<main>
		<div class="container-fluid py-5" id="div-form-contato">
			<form action="./reserva-update"
				class="form-control d-grid gap-4 mx-auto p-3">
				<input type="hidden" id="id" name="id" value="${reserva.idReserva}">
				<div>
					<h1 style="font-size: 1.3em; text-align: center;">Atualizar
						reserva</h1>
				</div>
				<div class="">
					<label for="f-id-cliente">Cliente</label> <select
						class="form-control" id="f-id-cliente" name="id-cliente" required>
						<option value="DEFAULT">Selecione o cliente</option>
						<jstl:forEach items="${listaClientes}" var="cliente">
							<option value="${cliente.idCliente}">${cliente.nomeCliente}</option>
						</jstl:forEach>
					</select>
				</div>
				<div class="">
					<label for="f-id-passagem">Passagem</label> <select
						class="form-control" id="f-id-passagem" name="id-passagem"
						required>
						<option value="DEFAULT">Selecione a passagem</option>
						<jstl:forEach items="${listaPassagens}" var="passagem">
							<option value="${passagem.idPassagem}">${passagem.destinoPassagem}</option>
						</jstl:forEach>
					</select>
				</div>
				<button type="submit" class="btn btn-primary">Enviar</button>
				<a class="btn" href="./reserva">Cancelar</a>
			</form>
		</div>
	</main>
	<script src="scripts/validador.js"></script>
</body>
</html>