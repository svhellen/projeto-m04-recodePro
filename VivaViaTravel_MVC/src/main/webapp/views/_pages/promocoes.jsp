<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- bootstrap CDN -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
	<!-- bootstrap icons -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
	<link rel="stylesheet" href="../../assets/css/style.css">
	<link rel="shortcut icon" href="../../assets/img/favicon.ico" type="image/x-icon">
	<title>VivaVia Travel</title>
</head>

<body>
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
			<jsp:param name="promocoesClass" value=" nav-link active" />
			<jsp:param name="promocoes" value="promocoes.jsp" />
			<jsp:param name="destinosClass" value=" nav-link " />
			<jsp:param name="destinos" value="destinos.jsp" />
			<jsp:param name="contatoClass" value=" nav-link " />
			<jsp:param name="contato" value="contato.jsp" />
			<jsp:param name="btnCrud" value="../../cliente" />
		</jsp:include>
	</header>

	<main class="">
		<div class="d-grid">
			<!-- cards promocoes  -->
			<section id="promocoes" class="container-fluid py-3 my-3 mx-auto">
				<h1>Pacotes promocionais</h1>
				<div class="row row-cols g-4 py-3">
					<div class="col">
						<div class="card ">
							<img src="../../assets/img/hoteis/ex-2.jpg" class="img-fluid rounded-start" alt="...">
							<div class="card-body">
								<span class="balao-promo position-absolute top-0">-25%</span>
								<h5 class="card-title">Pacote para Gramado</h5>
								<div class="pb-3">
								</div>
								<p><i class="bi bi-airplane"></i>
									Voo direto Origem <i class="bi bi-arrow-left-right"></i> Destino</p>
								<p><i class="bi bi-building"></i> Hotel nomeHotel</p>
								<p class="card-text">Breve descriÃ§Ã£o do hotel.</p>
								<p>PreÃ§o a partir de <strong>R$ 1.230</strong></p>
								<a href="em-construcao.html" class=" btn btn-primary d-block">Ver detalhes</a>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card ">
							<img src="../../assets/img/hoteis/ex-6.jpg" class="img-fluid rounded-start" alt="...">
							<div class="card-body">
								<span class="balao-promo position-absolute top-0">-10%</span>
								<h5 class="card-title">Pacote para SÃ£o Paulo</h5>
								<div class="pb-3">
								</div>
								<p><i class="bi bi-airplane"></i>
									Voo direto Origem <i class="bi bi-arrow-left-right"></i> Destino</p>
								<p><i class="bi bi-building"></i> Hotel nomeHotel</p>
								<p class="card-text">Breve descriÃ§Ã£o do hotel.</p>
								<p>PreÃ§o a partir de <strong>R$ 1540</strong></p>
								<a href="em-construcao.html" class=" btn btn-primary d-block">Ver detalhes</a>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card ">
							<img src="../../assets/img/hoteis/ex-7.jpg" class="img-fluid rounded-start" alt="...">
							<div class="card-body">
								<span class="balao-promo position-absolute top-0">-20%</span>
								<h5 class="card-title">Pacote para Manaus</h5>
								<div class="pb-3">
								</div>
								<p><i class="bi bi-airplane"></i>
									Voo direto Origem <i class="bi bi-arrow-left-right"></i> Destino</p>
								<p><i class="bi bi-building"></i> Hotel nomeHotel</p>
								<p class="card-text">Breve descriÃ§Ã£o do hotel.</p>
								<p>PreÃ§o a partir de <strong>R$ 970</strong></p>
								<a href="em-construcao.html" class=" btn btn-primary d-block">Ver detalhes</a>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card ">
							<img src="../../assets/img/hoteis/hotel-5.jpg" class="img-fluid rounded-start" alt="...">
							<div class="card-body">
								<span class="balao-promo position-absolute top-0">-5%</span>
								<h5 class="card-title">Pacote para Recife</h5>
								<div class="pb-3">
								</div>
								<p><i class="bi bi-airplane"></i>
									Voo direto Origem <i class="bi bi-arrow-left-right"></i> Destino</p>
								<p><i class="bi bi-building"></i> Hotel nomeHotel</p>
								<p class="card-text">Breve descriÃ§Ã£o do hotel.</p>
								<p>PreÃ§o a partir de <strong>R$ 1640</strong></p>
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