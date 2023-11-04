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
		<!-- navbar -->
		<nav class="navbar navbar-expand-md navbar-dark" id="menu"></nav>
	</header>

	<main class=" ">

		<div class="row text-center gap-3 m-3">
			<h1>Passagens</h1>
			<jsp:include page="../../components/menu.jsp">
				<jsp:param name="home" value="./index.jsp" />
				<jsp:param name="clientes" value="cliente" />
				<jsp:param name="passagens" value="passagem" />
				<jsp:param name="reservas" value="reserva" />
			</jsp:include>
		</div>

		<section class="container mx-auto p-4">
			<a href="./views/passagemCrud/formulario.html"
				class="btn btn-primary mb-3"> Add passagem </a>
			<%-- 			<table class="table-light table-responsive text-center px-3">
				<thead>
					<tr>
						<th>Id</th>
						<th>Destino</th><!-- 
						<th>Telefone</th>
						<th>Email</th> -->
						<th>Ações</th>
					</tr>
				</thead>
				<tbody>
					<jstl:forEach items="${listaPassagens}" var="passagem">
						<tr>
							<td>${passagem.idPassagem}</td>
							<td>${passagem.destinoPassagem}</td>
							<td>${passagem.origemPassagem}</td>
							<td>${passagem.emailCliente}</td>
							<td>
								<a href="passagem-details?id=${passagem.idPassagem}" class="btn btn-primary">Detalhes</a>  
								<a href="passagem-edit?id=${passagem.idPassagem}" class="btn btn-success">Editar</a>  
								<a href="passagem-delete?id=${passagem.idPassagem}" onclick="return confirm('Deseja Excluir?')" class="btn btn-danger">Excluir</a>
							</td>
						</tr>
					</jstl:forEach>
			</table> --%>

			<!-- ACCORDION -->
			<div class="accordion" id="accordionPanelsStayOpenExample">
				<jstl:forEach items="${listaPassagens}" var="passagem">
					<div class="accordion-item">
						<h2 class="accordion-header">
							<button class="accordion-button" type="button"
								data-bs-toggle="collapse"
								data-bs-target="#panelsStayOpen-collapse${passagem.idPassagem}"
								aria-expanded="true"
								aria-controls="panelsStayOpen-collapse${passagem.idPassagem}">
								Passagem nº: ${passagem.idPassagem} com destino a
								${passagem.destinoPassagem}</button>
						</h2>
						<div id="panelsStayOpen-collapse${passagem.idPassagem}"
							class="accordion-collapse collapse ">
							<div class="accordion-body">

								<!-- card -->
								<div class="card mb-3 mx-auto" style="max-width: 740px;">
									<p class="card-body">
										<small>Passagem nº:<strong>
												${passagem.idPassagem}</strong></small>
									</p>

									<div class="row g-0 g-md-3 justify-content-center">
										<div class="col-8 col-md-auto">
											<div class="card-body ">
												<fieldset>
													<legend>Dados passagem</legend>
													<p>Passagem nº: ${passagem.idPassagem}</p>
													<p>Origem: ${passagem.origemPassagem}</p>
													<p>Destino: ${passagem.destinoPassagem}</p>
													<p>Classe: ${passagem.classePassagem}</p>
													<p>Data: ${passagem.dataPassagem}</p>
													<p>Preço: R$ ${passagem.precoPassagem}</p>
												</fieldset>
											</div>
										</div>
										<div class="card-footer">
											<div class=" text-center">
												<%-- <a href="reserva-edit?id=${reserva.idReserva}" class="btn btn-success">Editar</a>   --%>
												<a href="reserva-delete?id=${passagem.idPassagem}"
													onclick="return confirm('Deseja Excluir?')"
													class="btn btn-danger">Excluir</a>

												<!-- MODAL -->
												<button type="button" class="btn btn-primary"
													data-bs-toggle="modal"
													data-bs-target="#exampleModal${passagem.idPassagem}"
													data-bs-whatever="@editar">Editar</button>

												<div class="modal fade"
													id="exampleModal${passagem.idPassagem}" tabindex="-1"
													aria-labelledby="exampleModalLabel" aria-hidden="true">
													<div class="modal-dialog">
														<div class="modal-content">
															<div class="modal-header">
																<h1 class="modal-title fs-5" id="exampleModalLabel">Atualizar
																	passagem</h1>
																<button type="button" class="btn-close"
																	data-bs-dismiss="modal" aria-label="Close"></button>
															</div>
															<div class="container-fluid py-5" id="div-form-contato">
																<form action="./passagem-update" class="">
																	<input type="hidden" id="id" name="id"
																		value="${passagem.idPassagem}">
																	<div class="modal-body d-grid gap-4 mx-auto p-3">
																		<div class="">
																			<label for="f-origem">Origem</label> <input
																				type="text" class="form-control" id="f-origem"
																				name="origem" value="${passagem.origemPassagem}"
																				required>
																		</div>
																		<div class="">
																			<label for="f-destino">Destino</label> <input
																				type="text" class="form-control" id="f-destino"
																				name="destino" value="${passagem.destinoPassagem}"
																				required>
																		</div>
																		<div class="">
																			<label for="f-classe">Classe</label> <input
																				type="text" class="form-control" id="f-classe"
																				name="classe" value="${passagem.classePassagem}"
																				required>
																		</div>
																		<div class="">
																			<label for="f-data">Data</label> <input type="date"
																				class="form-control" id="f-data" name="data"
																				value="${passagem.dataPassagem}" required>
																		</div>
																		<div class="">
																			<label for="f-preco">Preço</label> <input type="text"
																				class="form-control" id="f-preco" name="preco"
																				value="${passagem.precoPassagem}" required>
																		</div>
																	</div>
																	<div class="modal-footer">
																		<button type="button" class="btn btn-secondary"
																			data-bs-dismiss="modal">Close</button>
																		<button type="submit" class="btn btn-primary">Enviar</button>
																		<!-- 		<input type="button" value="Cancelar" class="btn" onclick="../../cliente"> -->
																	</div>
																</form>
															</div>
														</div>
													</div>
													<!-- MODAL -->
												</div>
											</div>
										</div>
									</div>
									<!-- card -->
								</div>
							</div>
						</div>
				</jstl:forEach>
			</div>
			<!-- FIM ACCORDION -->
		</section>
	</main>
	<footer class="py-5 px-3"> </footer>

	<script src="./assets/js/modal.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>