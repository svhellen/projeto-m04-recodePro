<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- fonawesome -->
	<script src="https://kit.fontawesome.com/fb651eed8c.js" crossorigin="anonymous"></script>
	<!-- bootstrap CDN -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
	<!-- bootstrap icons -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
	<link rel="stylesheet" href="../../assets/css/style.css">
	<link rel="shortcut icon" href="../../assets/img/favicon.ico" type="image/x-icon">
	<title>VivaVia Travel</title>
	<style>
		.navbar {
			background: #0B0B6B !important;
		}
	</style>
</head>

<body>
	<header class="row">
		<!-- navbar -->
		<jsp:include page="../../components/nav.jsp">
			<jsp:param name="logo" value="../../assets/img/teste-logo.png" />
			<jsp:param name="btnCrud" value="../../cliente" />
			<jsp:param name="homeClass" value=" nav-link " />
			<jsp:param name="home" value="../../index.jsp" />
			<jsp:param name="hospedagensClass" value=" nav-link active" />
			<jsp:param name="hospedagens" value="hospedagens.jsp" />
			<jsp:param name="passagensClass" value=" nav-link " />
			<jsp:param name="passagens" value="passagens.jsp" />
			<jsp:param name="promocoesClass" value=" nav-link " />
			<jsp:param name="promocoes" value="promocoes.jsp" />
			<jsp:param name="destinosClass" value=" nav-link " />
			<jsp:param name="destinos" value="destinos.jsp" />
			<jsp:param name="contatoClass" value=" nav-link " />
			<jsp:param name="contato" value="contato.jsp" />
			<jsp:param name="btnCrud" value="../../cliente" />
		</jsp:include>
	</header>
	<!-- formulÃ¡rio hospedagem -->
	<div class="container-fluid py-5" id="div-form">
		<form class="d-grid gap-4 mx-auto p-3">
			<h4>Hospedagens</h4>

			<div class="">
				<label for="f-destino">Destino</label>
				<input type="text" class="form-control" id="f-destino" placeholder="Para onde vai?" required>
			</div>
			<div class="row">
				<div class="col">
					<label for="data-check-in">Data check-in</label>
					<input type="date" class="form-control" id="f-check-in" required>
				</div>
				<div class="col">
					<label for="data-check-out">Data check-out</label>
					<input type="date" class="form-control" id="f-check-out">
				</div>
			</div>
			<div class="row">
				<div class="col">
					<label for="f-bedrooms">Quartos</label>
					<input type="number" min="1" max="4" value="1" class="form-control" id="f-bedrooms">
				</div>
				<div class="col">
					<label for="f-adults">Adultos</label>
					<input type="number" min="1" max="8" value="1" class="form-control" id="f-adults">
				</div>
				<div class="col">
					<label for="f-kids">CrianÃ§as</label>
					<input type="number" min="0" max="16" value="0" class="form-control" id="f-kids">
				</div>
			</div>
			<button type="submit" class="btn btn-primary">Buscar</button>
		</form>
	</div>
	<main>

		<div class="d-grid">
			<!-- cards hospedagens  -->
			<section id="hospedagens" class="container-fluid py-3 my-3 mx-auto">
				<h1>Hospedagens em alta</h1>
				<div class="row row-cols g-4 py-3">
					<div class="col">
						<div class="card ">
							<img src="../../assets/img/hoteis/hotel-5.jpg" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">NomeHotel</h5>
								<div class="pb-3">
									<div class="rate">4,9</div>
									<div class="d-inline">
										<i class="bi bi-star-fill"></i>
										<i class="bi bi-star-fill"></i>
										<i class="bi bi-star-fill"></i>
										<i class="bi bi-star-fill"></i>
										<i class="bi bi-star-fill"></i>
									</div>
								</div>
								<p><i class="bi bi-geo-alt"></i> nomeLocal</p>

								<p class="card-text">Breve descriÃ§Ã£o do hotel.</p>
								<p>PreÃ§o a partir de <strong>R$ PreÃ§o</strong></p>
								<a href="em-construcao.html" class=" btn btn-primary d-block">Ver detalhes</a>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card">
							<img src="../../assets/img/hoteis/hotel-3.jpg" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">NomeHotel</h5>
								<div class="pb-3">
									<div class="rate">4,5</div>
									<div class="d-inline">
										<i class="bi bi-star-fill"></i>
										<i class="bi bi-star-fill"></i>
										<i class="bi bi-star-fill"></i>
										<i class="bi bi-star-fill"></i>
										<i class="bi bi-star-half"></i>
									</div>
								</div>
								<p><i class="bi bi-geo-alt"></i> nomeLocal</p>
								<p class="card-text">Breve descriÃ§Ã£o do hotel.</p>
								<p>PreÃ§o a partir de <strong>R$ PreÃ§o</strong></p>
								<a href="em-construcao.html" class=" btn btn-primary d-block">Ver detalhes</a>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card">
							<img src="../../assets/img/hoteis/hotel-1.jpg" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">NomeHotel</h5>
								<div class="pb-3">
									<div class="rate">4,7</div>
									<div class="d-inline">
										<i class="bi bi-star-fill"></i>
										<i class="bi bi-star-fill"></i>
										<i class="bi bi-star-fill"></i>
										<i class="bi bi-star-fill"></i>
										<i class="bi bi-star-half"></i>
									</div>
								</div>
								<p><i class="bi bi-geo-alt"></i> nomeLocal</p>
								<p class="card-text">Breve descriÃ§Ã£o do hotel.</p>
								<p>PreÃ§o a partir de <strong>R$ PreÃ§o</strong></p>
								<a href="em-construcao.html" class=" btn btn-primary d-block">Ver detalhes</a>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card">
							<img src="../../assets/img/hoteis/hotel-2.jpg" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">NomeHotel</h5>
								<div class="pb-3">
									<div class="rate">4,3</div>
									<div class="d-inline">
										<i class="bi bi-star-fill"></i>
										<i class="bi bi-star-fill"></i>
										<i class="bi bi-star-fill"></i>
										<i class="bi bi-star-fill"></i>
										<i class="bi bi-star-half"></i>
									</div>
								</div>
								<p><i class="bi bi-geo-alt"></i> nomeLocal</p>
								<p class="card-text">Breve descriÃ§Ã£o do hotel.</p>
								<p>PreÃ§o a partir de <strong>R$ PreÃ§o</strong></p>
								<a href="em-construcao.html" class=" btn btn-primary d-block">Ver detalhes</a>
							</div>
						</div>
					</div>
				</div>
			</section>
	</main>
	<footer class="py-5 px-3">
		<div class="row">
			<!-- logo marca -->
			<div class="col-6 col-md-4 mb-3 text-md-start">
				<a class="footer-brand " href="#"><img src="../../assets/img/logo.png" alt="logo" id="footer-logo"></a>
				<p>Descubra o Mundo, Abrace a Jornada!</p>
			</div>
			<!-- links importantes -->
			<div class="col-6 col-md-8 mb-3 text-md-end">
				<ul id="secoes" class="nav pt-5 flex-column flex-md-row ">
					<li class="nav-item mb-2 col">
						<a href="em-construcao.html" class="nav-link p-0 ">Blog</a>
					</li>
					<li class="nav-item mb-2 col">
						<a href="contato.html" class="nav-link p-0 ">Fale conosco</a>
					</li>
					<li class="nav-item mb-2 col">
						<a href="em-construcao.html" class="nav-link p-0  ">PolÃ­tica de privacidade</a>
					</li>
					<li class="nav-item mb-2 col">
						<a href="em-construcao.html" class="nav-link p-0  ">Termos & CondiÃ§Ãµes</a>
					</li>
				</ul>
			</div>
			<!-- copyright e social medias -->
			<div class="d-flex flex-column flex-sm-row justify-content-between py-4 my-4 border-top">
				<p>Â© 2023 VivaVia Travel, Inc. All rights reserved.</p>
				<div class="social-media list-inline text-md-end">
					<a class="icon-link icon-link-hover list-inline-item"
						style="--bs-icon-link-transform: translate3d(0, -.125rem, 0);" href="#">
						<i class="bi bi-youtube"></i>
					</a>
					<a class="icon-link icon-link-hover list-inline-item"
						style="--bs-icon-link-transform: translate3d(0, -.125rem, 0);" href="#">
						<i class="bi bi-instagram"></i></a>
					<a class="icon-link icon-link-hover list-inline-item"
						style="--bs-icon-link-transform: translate3d(0, -.125rem, 0);" href="#">
						<i class="bi bi-twitter" aria-hidden="true"></i></a>
					<a class="icon-link icon-link-hover list-inline-item"
						style="--bs-icon-link-transform: translate3d(0, -.125rem, 0);" href="#">
						<i class="bi bi-facebook" aria-hidden="true"></i></a>
				</div>
			</div>
		</div>
	</footer>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>

</html>