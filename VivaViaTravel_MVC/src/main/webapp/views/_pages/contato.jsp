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
<body class=" bg-body-secondary sitePrincipal">
	<header class="row">
		<!-- navbar -->
		<jsp:include page="../../components/nav.jsp">
			<jsp:param name="logo" value="../../assets/img/teste-logo.png" />
			<jsp:param name="btnCrud" value="../../cliente" />
			<jsp:param name="homeClass" value=" nav-link " />
			<jsp:param name="home" value="../../index.jsp" />
			<jsp:param name="hospedagensClass" value=" nav-link " />
			<jsp:param name="hospedagens" value="hospedagens.jsp" />
			<jsp:param name="passagensClass" value=" nav-link " />
			<jsp:param name="passagens" value="passagens.jsp" />
			<jsp:param name="promocoesClass" value=" nav-link " />
			<jsp:param name="promocoes" value="promocoes.jsp" />
			<jsp:param name="destinosClass" value=" nav-link " />
			<jsp:param name="destinos" value="destinos.jsp" />
			<jsp:param name="contatoClass" value=" nav-link active " />
			<jsp:param name="contato" value="contato.jsp" />
			<jsp:param name="btnCrud" value="../../cliente" />
		</jsp:include>
	</header>
	<main class=" ">
		<!-- formulÃ¡rio contato -->
		<div class="container-fluid py-5" id="div-form-contato">
			<form class="d-grid gap-4 mx-auto p-3">
				<div>
					<h1 style="font-size: 1.3em;">Fale conosco</h1>
					<p>Preencha os campos abaixo para nos enviar uma mensagem</p>
				</div>

				<div class="">
					<label for="f-nome">Nome</label> <input type="text"
						class="form-control" id="f-nome" placeholder="" required>
				</div>
				<div class="">
					<label for="f-email">Email</label> <input type="email"
						class="form-control" id="f-email" placeholder="" required>
				</div>
				<div class="">
					<label for="data-check-in">Celular</label> <input type="tel"
						class="form-control" id="f-check-in" placeholder="(99) 99999-9999"
						required>
				</div>
				<div class="">
					<label for="f-msg">Mensagem</label> <input type="text"
						class="form-control" id="f-msg">
				</div>
				<button type="submit" class="btn btn-primary">Enviar</button>
			</form>
		</div>

		<div class="row text-center gap-3 my-5">
			<div class="card col-12 col-md-4 mx-auto" style="width: 18rem;">
				<div class="card-body">
					<h5 class="card-title">Central de Atendimento</h5>
					<h6 class="card-subtitle mb-2 text-body-secondary"></h6>
					<p class="card-text">Suporte pós venda.</p>
					<a href="#" class="card-link">0800 000 0000</a>
				</div>
			</div>
			<div class="card col-12 col-md-4 mx-auto" style="width: 18rem;">
				<div class="card-body">
					<h5 class="card-title">Ajuda na compra</h5>
					<h6 class="card-subtitle mb-2 text-body-secondary"></h6>
					<p class="card-text">Fale com um dos nossos agentes.</p>
					<a href="" class="card-link">99 99999-9999</a>
				</div>
			</div>
			<div class="card col-12 col-md-4 mx-auto" style="width: 18rem;">
				<div class="card-body">
					<h5 class="card-title">E-mail</h5>
					<h6 class="card-subtitle mb-2 text-body-secondary"></h6>
					<p class="card-text">Entre em contato por email.</p>
					<a href="#" class="card-link">email@exemplo.com</a>
				</div>
			</div>
		</div>
	</main>
	<footer class="py-5 px-3">
		<div class="row">
			<!-- logo marca -->
			<div class="col-6 col-md-4 mb-3 text-md-start">
				<a class="footer-brand " href="#"><img
					src="../../assets/img/logo.png" alt="logo" id="footer-logo"></a>
				<p>Descubra o Mundo, Abrace a Jornada!</p>
			</div>
			<!-- links importantes -->
			<div class="col-6 col-md-8 mb-3 text-md-end">
				<ul id="secoes" class="nav pt-5 flex-column flex-md-row ">
					<li class="nav-item mb-2 col"><a href="#"
						class="nav-link p-0 ">Blog</a></li>
					<li class="nav-item mb-2 col"><a href="#"
						class="nav-link p-0 ">Fale conosco</a></li>
					<li class="nav-item mb-2 col"><a href="#"
						class="nav-link p-0  ">Política de privacidade</a></li>
					<li class="nav-item mb-2 col"><a href="#"
						class="nav-link p-0  ">Termos & Condições</a></li>
				</ul>
			</div>
			<!-- copyright e social medias -->
			<div
				class="d-flex flex-column flex-sm-row justify-content-between py-4 my-4 border-top">
				<p>Â© 2023 VivaVia Travel, Inc. All rights reserved.</p>
				<div class="social-media list-inline text-md-end">
					<a class="icon-link icon-link-hover list-inline-item"
						style="--bs-icon-link-transform: translate3d(0, -.125rem, 0);"
						href="#"> <i class="bi bi-youtube"></i>
					</a> <a class="icon-link icon-link-hover list-inline-item"
						style="--bs-icon-link-transform: translate3d(0, -.125rem, 0);"
						href="#"> <i class="bi bi-instagram"></i></a> <a
						class="icon-link icon-link-hover list-inline-item"
						style="--bs-icon-link-transform: translate3d(0, -.125rem, 0);"
						href="#"> <i class="bi bi-twitter" aria-hidden="true"></i></a> <a
						class="icon-link icon-link-hover list-inline-item"
						style="--bs-icon-link-transform: translate3d(0, -.125rem, 0);"
						href="#"> <i class="bi bi-facebook" aria-hidden="true"></i></a>
				</div>
			</div>
		</div>
	</footer>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>