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
<body class=" bg-body-secondary">
	<header class="row">
		<jsp:include page="../../components/headerCrud.jsp">
			<jsp:param name="pageName" value="Clientes" />
			<jsp:param name="clientesActive" value="active" />
			<jsp:param name="passagensActive" value="" />
			<jsp:param name="reservasActive" value="" />
		</jsp:include>
	</header>
	<main class=" ">
		<section class="container mx-auto p-4">
			<a href="./views/clienteCrud/formulario.jsp"
				class="btn btn-primary mb-3"> Novo cliente </a>
				
			<div class=" row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
				<jstl:forEach items="${listaClientes}" var="cliente">
					<div class="col">
						<!-- card -->
						<div class="card " style="max-width: 740px;">
							<div class="card-body">
								<small>Cliente nº:<strong> ${cliente.idCliente}</strong></small>
								<h5 class="card-title text-center mt-2">Dados clientes</h5>
							</div>
							<div class="row g-0 g-md-3 justify-content-center">
								<div class="col-8 col-md-auto">
									<div class="card-body ">
										<p>Cliente nº: ${cliente.idCliente}</p>
										<p>Nome: ${cliente.nomeCliente}</p>
										<p>Email: ${cliente.emailCliente}</p>
										<p>Telefone: ${cliente.telefoneCliente}</p>
									</div>
								</div>
								<div class="card-footer">
									<div class=" text-center">
										<a href="cliente-edit?id=${cliente.idCliente}"
											class="btn btn-success">Editar</a> <a
											href="cliente-delete?id=${cliente.idCliente}"
											onclick="return confirm('Deseja Excluir?')"
											class="btn btn-danger">Excluir</a>
									</div>
								</div>
							</div>
						</div>
						<!-- card -->
					</div>
				</jstl:forEach>
			</div>
		</section>

	</main>
	<footer class="py-5 px-3"> </footer>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>