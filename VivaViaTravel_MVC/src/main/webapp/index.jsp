<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- bootstrap CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<!-- bootstrap icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link rel="stylesheet" href="assets/css/style.css">
<title>VivaVia Travel</title>
<link rel="shortcut icon" href="assets/img/favicon.ico"
	type="image/x-icon">
<style>
header {
	position: relative;
}

header #menu {
	background: transparent !important;
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	z-index: 10;
}
/* header #menu {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background-color: #333 !important;
            color: #fff;
            padding: 10px 0 !important;
            text-align: center;
            z-index: 1000;
            margin: 0 !important;
        } */
/* 
      .offcanvas-lg a {
        color: rgba(0, 0, 0, 0.5);
      }

      .offcanvas-lg .nav-link .active {
        color: rgba(0, 0, 0, 1) !important;
        font-weight: bold;
      }

      .offcanvas-lg a:hover {
        color: rgba(0, 0, 0, 0.7);
        font-weight: bold;
      } */
#offcanvas-btn {
	background-color: transparent !important;
}

header .carousel-caption {
	font-family: 'Times New Roman', Times, serif;
	height: 12em;
	margin-bottom: 10em;
}

#carousel-principal .carousel-inner {
	height: 40em;
}

#carousel-principal .carousel-item:nth-child(1) {
	background-image: linear-gradient(rgba(0, 0, 0, 0.35),
		rgba(0, 0, 0, 0.25)), url(assets/img/carousel/desktop-1.jpg);
}

#carousel-principal .carousel-item:nth-child(2) {
	background-image: linear-gradient(rgba(0, 0, 0, 0.35),
		rgba(0, 0, 0, 0.25)), url(assets/img/carousel/desktop-2.jpg);
}

#carousel-principal .carousel-item:nth-child(3) {
	background-image: linear-gradient(rgba(0, 0, 0, 0.35),
		rgba(0, 0, 0, 0.25)), url(assets/img/carousel/desktop-3.jpg);
}

#top-destinos .card, #hospedagens .card, #pacotes .card, #passagens .card
	{
	background: #FFF !important;
	min-width: 230px !important;
	margin: 0 1rem 1rem 0;
}

#ver-mais .btn {
	font-size: .8em;
	background-color: transparent;
	border: 1px solid black;
	border-radius: 25px;
}

.display-4 {
	color: rgb(73, 73, 73);
}

@media ( max-width : 650px) {
	.display-4 {
		font-size: 1.3em !important;
	}
}
</style>
</head>
<body class="sitePrincipal">
	<header class="row">
		<!-- navbar -->
		<jsp:include page="./components/nav.jsp">
			<jsp:param name="logo" value="assets/img/teste-logo.png" />
			<jsp:param name="btnCrud" value="cliente" />
			<jsp:param name="homeClass" value=" nav-link active" />
			<jsp:param name="home" value="./index.jsp" />
			<jsp:param name="hospedagensClass" value=" nav-link " />
			<jsp:param name="hospedagens" value="views/_pages/hospedagens.jsp" />
			<jsp:param name="passagensClass" value=" nav-link " />
			<jsp:param name="passagens" value="views/_pages/passagens.jsp" />
			<jsp:param name="promocoesClass" value=" nav-link " />
			<jsp:param name="promocoes" value="views/_pages/promocoes.jsp" />
			<jsp:param name="destinosClass" value=" nav-link " />
			<jsp:param name="destinos" value="views/_pages/destinos.jsp" />
			<jsp:param name="contatoClass" value=" nav-link " />
			<jsp:param name="contato" value="views/_pages/contato.jsp" />
			<jsp:param name="btnCrud" value="cliente" />
		</jsp:include>
		<div id="carousel-principal" class="carousel slide carousel-fade"
			data-bs-ride="carousel">

			<!-- <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
          </div> -->
			<div class="carousel-inner">

				<div class="carousel-item active " id="item1">
					<div class="carousel-caption d-block">
						<h1 class=" display-3">Descubra o Mundo</h1>
						<h1 class=" display-3">Abrace a Jornada</h1>
					</div>
				</div>
				<div class="carousel-item" id="item2">
					<div class="carousel-caption d-block">
						<h1 class=" display-3">Descubra o Mundo</h1>
						 <h1 class=" display-3">Abrace a Jornada</h1> 
						<!--<h1 class=" display-3">Descubra destinos deslumbrantes e
							experiências únicas.</h1>-->
					</div>
				</div>
				<div class="carousel-item" id="item3">
					<div class="carousel-caption d-block">
						 <h1 class=" display-3">Descubra o Mundo</h1>
						<h1 class=" display-3">Abrace a Jornada</h1>
						<!--<h1 class=" display-3">Nossos agentes de viagens estão
							prontos para ajudá-lo a encontrar a melhor opção para a sua
							próxima aventura.</h1> -->
					</div>
				</div>
			</div>
		</div>
	</header>
	<main>


		<div id="" class="container-fluid py-3 my-3 mx-auto">
			<div id="top-destinos">
				<div>
					<div class="d-flex justify-content-between" id="ver-mais">
						<h1>Destinos</h1>
						<a class="btn" href="views/_pages/destinos.jsp">Ver mais</a>
					</div>
					<p class=" display-4">Lugares mais procurados do Brasil essa
						semana.</p>
				</div>

				<div class="card-group gap-3">
					<div class="card text-bg-dark">
						<img src="assets/img/cidades/rio-rj.jpg" class="card-img"
							alt="...">
						<div class="card-img-overlay">
							<h4 class="card-title">Rio de Janeiro</h4>
						</div>
					</div>
					<div class="card text-bg-dark">
						<img src="assets/img/cidades/porto-seguro-ba.jpg" class="card-img"
							alt="...">
						<div class="card-img-overlay">
							<h4 class="card-title">Porto Seguro</h4>
						</div>
					</div>
					<div class="card text-bg-dark">
						<img src="assets/img/cidades/sp.jpg" class="card-img" alt="...">
						<div class="card-img-overlay">
							<h4 class="card-title">São Paulo</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		</div>


		<div class="d-block">
			<!-- cards hospedagens  -->
			<section id="hospedagens" class="container-fluid py-3 my-3 mx-auto">

				<div>
					<div class="d-flex justify-content-between" id="ver-mais">
						<h1 class=" ">Hospedagens</h1>
						<a class="btn" href="views/_pages/hospedagens.jsp">Ver mais</a>
					</div>
					<p class="display-4">Milhares de hotéis para você encontrar o
						perfeito pras suas férias.</p>
				</div>

				<div class=" ">
					<div
						class="d-flex flex-nowrap justify-content-between overflow-x-scroll  ">
						<div class="card ">
							<img src="assets/img/hoteis/hotel-4.jpg"
								class="img-fluid rounded-start" alt="...">
							<div class="card-body">
								<h5 class="card-title">NomeHotel</h5>
								<div class="pb-3">
									<div class="rate">4,9</div>
									<div class="d-inline">
										<i class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i>
										<i class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i>
										<i class="bi bi-star-fill"></i>
									</div>
								</div>
								<p>
									<i class="bi bi-geo-alt"></i> nomeLocal
								</p>

								<p class="card-text">Breve descrição do hotel.</p>
								<p>
									Preço a partir de <strong>R$ Preço</strong>
								</p>
								<a href="#" class=" btn btn-primary d-block">Ver detalhes</a>
							</div>
						</div>
						<div class="card">
							<img src="assets/img/hoteis/hotel-5.jpg"
								class="img-fluid rounded-start" alt="...">
							<div class="card-body">
								<h5 class="card-title">NomeHotel</h5>
								<div class="pb-3">
									<div class="rate">4,5</div>
									<div class="d-inline">
										<i class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i>
										<i class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i>
										<i class="bi bi-star-half"></i>
									</div>
								</div>
								<p>
									<i class="bi bi-geo-alt"></i> nomeLocal
								</p>
								<p class="card-text">Breve descrição do hotel.</p>
								<p>
									Preço a partir de <strong>R$ Preço</strong>
								</p>
								<a href="#" class=" btn btn-primary d-block">Ver detalhes</a>
							</div>
						</div>
						<div class="card">
							<img src="assets/img/hoteis/hotel-6.jpg"
								class="img-fluid rounded-start" alt="...">
							<div class="card-body">
								<h5 class="card-title">NomeHotel</h5>
								<div class="pb-3">
									<div class="rate">4,7</div>
									<div class="d-inline">
										<i class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i>
										<i class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i>
										<i class="bi bi-star-half"></i>
									</div>
								</div>
								<p>
									<i class="bi bi-geo-alt"></i> nomeLocal
								</p>
								<p class="card-text">Breve descrição do hotel.</p>
								<p>
									Preço a partir de <strong>R$ Preço</strong>
								</p>
								<a href="#" class=" btn btn-primary d-block">Ver detalhes</a>
							</div>
						</div>
						<div class="card">
							<img src="assets/img/hoteis/hotel-3.jpg"
								class="img-fluid rounded-start" alt="...">
							<div class="card-body">
								<h5 class="card-title">NomeHotel</h5>
								<div class="pb-3">
									<div class="rate">4,3</div>
									<div class="d-inline">
										<i class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i>
										<i class="bi bi-star-fill"></i> <i class="bi bi-star-fill"></i>
										<i class="bi bi-star-half"></i>
									</div>
								</div>
								<p>
									<i class="bi bi-geo-alt"></i> nomeLocal
								</p>
								<p class="card-text">Breve descrição do hotel.</p>
								<p>
									Preço a partir de <strong>R$ Preço</strong>
								</p>
								<a href="#" class=" btn btn-primary d-block">Ver detalhes</a>
							</div>
						</div>
					</div>
				</div>
			</section>

			<!-- cards passagens  -->
			<section id="passagens" class="container-fluid py-3 my-3 mx-auto">

				<div class=" " id="ver-mais">
					<div class="d-flex justify-content-between">
						<h1>Passagens Aéreas</h1>
						<a class="btn" href="views/_pages/passagens.jsp">Ver mais</a>
					</div>
					<p class="display-4">Compre passagens com um clique.</p>
				</div>

				<div
					class="d-flex flex-nowrap justify-content-between overflow-x-scroll   ">
					<div class="">
						<div class="card ">
							<img src="assets/img/cidades/porto-seguro-ba.jpg"
								class="img-fluid rounded-start" alt="...">
							<div class="card-body">
								<h5 class="card-title">Passagem para Porto Seguro</h5>
								<p class="card-subtitle">Classe: Econômica</p>
								<p>
									<i class="bi bi-airplane"></i> Saindo de Sâo Paulo
								</p>
								<p>
									<i class="bi bi-airplane"></i> Para Porto Seguro
								</p>
							</div>
							<div class="card-footer">
								<p>
									Preço a partir de <strong>R$ 380</strong>
								</p>
								<a href="#" class=" btn btn-primary d-block">Ver detalhes</a>
							</div>
						</div>
					</div>
					<div class="">
						<div class="card ">
							<img src="assets/img/hoteis/ex-3.jpg"
								class="img-fluid rounded-start" alt="...">
							<div class="card-body">
								<h5 class="card-title">Passagem para Fortaleza</h5>
								<p class="card-subtitle">Classe: Primeira classe</p>
								<p>
									<i class="bi bi-airplane"></i> Saindo de São Paulo
								</p>
								<p>
									<i class="bi bi-airplane"></i> Para Fortaleza
								</p>
							</div>
							<div class="card-footer">
								<p>
									Preço a partir de <strong>R$ 560</strong>
								</p>
								<a href="#" class=" btn btn-primary d-block">Ver detalhes</a>
							</div>
						</div>
					</div>
					<div class="">
						<div class="card ">
							<img src="assets/img/hoteis/ex-2.jpg"
								class="img-fluid rounded-start" alt="...">
							<div class="card-body">
								<h5 class="card-title">Passagem para Rio de Janeiro</h5>
								<p class="card-subtitle">Classe: Econômica</p>
								<p>
									<i class="bi bi-airplane"></i> Saindo de São Paulo
								</p>
								<p>
									<i class="bi bi-airplane"></i> Para Rio de Janeiro
								</p>
							</div>
							<div class="card-footer">
								<p>
									Preço a partir de <strong>R$ 350</strong>
								</p>
								<a href="em-construcao.html" class=" btn btn-primary d-block">Ver
									detalhes</a>
							</div>
						</div>
					</div>
					<div class="">
						<div class="card ">
							<img src="assets/img/cidades/bh-mg.jpg"
								class="img-fluid rounded-start" alt="...">
							<div class="card-body">
								<h5 class="card-title">Passagem para Belo horizonte</h5>
								<p class="card-subtitle">Classe: Econômica</p>
								<p>
									<i class="bi bi-airplane"></i> Saindo de São Paulo
								</p>
								<p>
									<i class="bi bi-airplane"></i> Para Belo Horizonte
								</p>
							</div>
							<div class="card-footer">
								<p>
									Preço a partir de <strong>R$ 430</strong>
								</p>
								<a href="#" class=" btn btn-primary d-block">Ver detalhes</a>
							</div>
						</div>
					</div>
				</div>
			</section>

			<!-- cards Promoções  -->
			<section id="promocoes" class="container-fluid py-3 my-3 mx-auto">

				<div class=" " id="ver-mais">
					<div class="d-flex justify-content-between">
						<h1>Pacotes promocionais</h1>
						<a class="btn" href="views/_pages/promocoes.jsp">Ver mais</a>
					</div>
					<p class="display-4">Adquira pacotes com preços incríveis.</p>
				</div>

				<div
					class="d-flex flex-nowrap justify-content-between overflow-x-scroll   ">
					<div class="">
						<div class="card ">
							<img src="assets/img/hoteis/ex-2.jpg"
								class="img-fluid rounded-start" alt="...">
							<div class="card-body">
								<span class="balao-promo position-absolute top-0">-25%</span>
								<h5 class="card-title">Pacote para Gramado</h5>
								<div class="pb-3"></div>
								<p>
									<i class="bi bi-airplane"></i> Voo direto Origem <i
										class="bi bi-arrow-left-right"></i> Destino
								</p>
								<p>
									<i class="bi bi-building"></i> Hotel nomeHotel
								</p>
								<p class="card-text">Breve descrição do hotel.</p>
								<p>
									Preço a partir de <strong>R$ 1.230</strong>
								</p>
								<a href="#" class=" btn btn-primary d-block">Ver detalhes</a>
							</div>
						</div>
					</div>
					<div class="">
						<div class="card ">
							<img src="assets/img/hoteis/ex-6.jpg"
								class="img-fluid rounded-start" alt="...">
							<div class="card-body">
								<span class="balao-promo position-absolute top-0">-10%</span>
								<h5 class="card-title">Pacote para São Paulo</h5>
								<div class="pb-3"></div>
								<p>
									<i class="bi bi-airplane"></i> Voo direto Origem <i
										class="bi bi-arrow-left-right"></i> Destino
								</p>
								<p>
									<i class="bi bi-building"></i> Hotel nomeHotel
								</p>
								<p class="card-text">Breve descrição do hotel.</p>
								<p>
									Preço a partir de <strong>R$ 1540</strong>
								</p>
								<a href="#" class=" btn btn-primary d-block">Ver detalhes</a>
							</div>
						</div>
					</div>
					<div class="">
						<div class="card ">
							<img src="assets/img/hoteis/ex-7.jpg"
								class="img-fluid rounded-start" alt="...">
							<div class="card-body">
								<span class="balao-promo position-absolute top-0">-20%</span>
								<h5 class="card-title">Pacote para Manaus</h5>
								<div class="pb-3"></div>
								<p>
									<i class="bi bi-airplane"></i> Voo direto Origem <i
										class="bi bi-arrow-left-right"></i> Destino
								</p>
								<p>
									<i class="bi bi-building"></i> Hotel nomeHotel
								</p>
								<p class="card-text">Breve descrição do hotel.</p>
								<p>
									Preço a partir de <strong>R$ 970</strong>
								</p>
								<a href="#" class=" btn btn-primary d-block">Ver detalhes</a>
							</div>
						</div>
					</div>
					<div class="">
						<div class="card ">
							<img src="assets/img/hoteis/hotel-5.jpg"
								class="img-fluid rounded-start" alt="...">
							<div class="card-body">
								<span class="balao-promo position-absolute top-0">-5%</span>
								<h5 class="card-title">Pacote para Recife</h5>
								<div class="pb-3"></div>
								<p>
									<i class="bi bi-airplane"></i> Voo direto Origem <i
										class="bi bi-arrow-left-right"></i> Destino
								</p>
								<p>
									<i class="bi bi-building"></i> Hotel nomeHotel
								</p>
								<p class="card-text">Breve descrição do hotel.</p>
								<p>
									Preço a partir de <strong>R$ 1640</strong>
								</p>
								<a href="#" class=" btn btn-primary d-block">Ver detalhes</a>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</main>
	<footer class="py-5 px-3">
		<div class="row">
			<!-- logo marca -->
			<div class="col-6 col-md-4 mb-3 text-md-start">
				<a class="footer-brand " href="#"><img src="assets/img/logo.png"
					alt="logo" id="footer-logo"></a>
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
				<p>© 2023 VivaVia Travel, Inc. All rights reserved.</p>
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