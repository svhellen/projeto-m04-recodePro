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
<link rel="stylesheet" href="../../assets/css/style.css">
<link rel="shortcut icon" href="../../assets/img/favicon.ico"
	type="image/x-icon">
<title>VivaVia Travel</title>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark" id="menu">
			<div class="container-fluid">
				<a class="navbar-brand " href="#" style="color: #FFF;"><img
					src="../../assets/img/teste-logo.png" alt="logo" id="logo">VivaVia
					Travel</a>
				<!-- botao menu telas pequenas -->

				<button class="btn d-lg-none navbar-dark" type="button"
					data-bs-toggle="offcanvas" data-bs-target="#offcanvasResponsive"
					aria-controls="offcanvasResponsive" id="offcanvas-btn">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="offcanvas-lg offcanvas-end " tabindex="-1"
					id="offcanvasResponsive" aria-labelledby="offcanvasResponsiveLabel">
					<div class="offcanvas-header">
						<h5 class="offcanvas-title login " id="offcanvasResponsiveLabel">
							<ul class=" ">
								<li class="nav-item"><a class="btn nav-link "
									href="../../index.jsp">Crud</a></li>
							</ul>
						</h5>
						<button type="button" class="btn-close"
							data-bs-dismiss="offcanvas" data-bs-target="#offcanvasResponsive"
							aria-label="Close"></button>
					</div>
					<!-- <div class=" "> -->
					<!-- navbar links -->
					<ul class="navbar-nav offcanvas-body off col-lg-8">
						<li class="nav-item"><a class="nav-link" aria-current="page"
							href="../../index.jsp">Home</a></li>
						<li class="nav-item"><a class="nav-link"
							href="../../views/_pages/hospedagens.jsp">Hospedagens</a></li>
						<li class="nav-item"><a class="nav-link"
							href="../../views/_pages/passagens.jsp">Passagens</a></li>
						<li class="nav-item"><a class="nav-link"
							href="../../views/_pages/destinos.jsp">Destinos</a></li>
						<li class="nav-item"><a class="nav-link"
							href="../../views/_pages/promocoes.jsp">Promoções</a></li>
						<li class="nav-item"><a class="nav-link"
							href="../../views/_pages/contato.jsp">Contato</a></li>
					</ul>
					<!-- </div> -->
				</div>
				<div class=" d-none d-lg-block  login">
					<ul class="">
						<li class="nav-item"><a class="btn nav-link active"
							href="../../cliente">Crud</a></li>
					</ul>
				</div>
			</div>
			<hr>
		</nav>
		<div class="row text-center m-0 p-0 menuCrud">
			<h1>Clientes</h1>
			<ul class="nav justify-content-center ">
				<li class="nav-item"><a class="nav-link active"
					href="../../cliente">Clientes</a></li>
				<li class="nav-item"><a class="nav-link " href="../../passagem">Passagens</a></li>
				<li class="nav-item"><a class="nav-link " href="../../reserva">Reservas</a></li>
			</ul>
		</div>
	</header>
	<main>
		<div class="container-fluid py-5" id="div-form-contato">
			<form action="../../cliente-create"
				class="form-control d-grid gap-4 mx-auto p-3">
				<input type="hidden" name="id" value="${cliente.idCliente}">
				<div>
					<h1 style="font-size: 1.3em; text-align: center;">Cadastrar
						cliente</h1>
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
				<button type="submit" class="btn btn-primary">Enviar</button>
				<a class="btn btn-primary" href="../../cliente">Cancelar</a>
			</form>
		</div>
	</main>
	<footer>
		<jsp:include page="../../components/footer.jsp">
			<jsp:param name="srcLogo" value="../../assets/img/logo.png" />
		</jsp:include>
	</footer>
</body>
</html>