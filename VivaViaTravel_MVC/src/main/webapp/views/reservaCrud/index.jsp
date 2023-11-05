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
<body >
	<header class="row">
		<jsp:include page="../../components/headerCrud.jsp">
			<jsp:param name="pageName" value="Reservas" />
			<jsp:param name="clientesActive" value="" />
			<jsp:param name="passagensActive" value="" />
			<jsp:param name="reservasActive" value=" active " />
		</jsp:include>
	</header>
	<main class=" ">
		<section class="container mx-auto p-4">
			<%--  		<jsp:include page="../../components/modalCreateEditReserva.jsp">
				<jsp:param name="add-reserva" value="reserva-getCreate" />
			</jsp:include> --%>

			<a href="reserva-getCreate" class="btn btn-primary mb-3">Add
				reserva </a>

			<!-- ACCORDION -->
			<div class="accordion" id="accordionPanelsStayOpenExample">
				<jstl:forEach items="${listaReservas}" var="reserva">
					<div class="accordion-item">
						<h2 class="accordion-header">
							<button class="accordion-button" type="button"
								data-bs-toggle="collapse"
								data-bs-target="#panelsStayOpen-collapse${reserva.idReserva}"
								aria-expanded="true"
								aria-controls="panelsStayOpen-collapse${reserva.idReserva}">
								Reserva nº: ${reserva.idReserva} feita por
								${reserva.cliente.nomeCliente}</button>
						</h2>
						<div id="panelsStayOpen-collapse${reserva.idReserva}"
							class="accordion-collapse collapse ">
							<div class="accordion-body">

								<!-- card -->
								<div class="card mb-3 mx-auto" style="max-width: 740px;">
									<p class="card-body">
										<small>Reserva nº:<strong>
												${reserva.idReserva}</strong></small>
									</p>

									<div class="row g-0 g-md-3 justify-content-center">
										<div class="col-8 col-md-auto">
											<div class="card-body ">
												<h5>Dados passagem</h5>
												<p>Passagem nº: ${reserva.passagem.idPassagem}</p>
												<p>Origem: ${reserva.passagem.origemPassagem}</p>
												<p>Destino: ${reserva.passagem.destinoPassagem}</p>
												<p>Classe: ${reserva.passagem.classePassagem}</p>
												<p>Data: ${reserva.passagem.dataPassagem}</p>
												<p>Preço: R$ ${reserva.passagem.precoPassagem}</p>
											</div>
										</div>
										<div class="col-8 col-md-auto ">
											<div class="card-body ">
												<h5>Dados cliente</h5>
												<p>Cliente nº: ${reserva.cliente.idCliente}
												<p>Nome: ${reserva.cliente.nomeCliente}</p>
												<p>Email: ${reserva.cliente.emailCliente}</p>
												<p>Telefone: ${reserva.cliente.telefoneCliente}</p>
											</div>
										</div>
									</div>

									<div class="card-footer">
										<div class=" text-center">
											<a href="reserva-edit?id=${reserva.idReserva}"
												class="btn btn-success">Editar</a> <a
												href="reserva-delete?id=${reserva.idReserva}"
												onclick="return confirm('Deseja Excluir?')"
												class="btn btn-danger">Excluir</a>

											<%-- <button type="button" class="btn btn-primary"
												data-bs-toggle="modal"
												data-bs-target="#exampleModal${reserva.idReserva}"
												data-bs-whatever="@editReserva">Open modal for
												@editReserva</button>

											<a href="reserva-delete?id=${reserva.idReserva}"
												onclick="return confirm('Deseja Excluir?')"
												class="btn btn-danger">Excluir</a>

											<div class="modal fade" id="exampleModal${reserva.idReserva}"
												tabindex="-1" aria-labelledby="exampleModalLabel"
												aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h1 class="modal-title fs-5" id="exampleModalLabel">Atualizar
																reserva</h1>
															<button type="button" class="btn-close"
																data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<form action="./reserva-update" class="modal-body">
															<!--<form action="./reserva-update" class="form-control d-grid gap-4 mx-auto p-3"> -->
															<input type="hidden" id="id" name="id"
																value="${reserva.idReserva}">
															<div class="">
																<label for="f-id-cliente">Cliente</label> <select
																	class="form-control" id="f-id-cliente"
																	name="id-cliente" required>
																	<option value="DEFAULT">Selecione o cliente</option>
																	<jstl:forEach items="${listaClientes}" var="cliente">
																		<option value="${cliente.idCliente}">${cliente.nomeCliente}</option>
																	</jstl:forEach>
																</select>
															</div>
															<div class="">
																<label for="f-id-passagem">Passagem</label> <select
																	class="form-control" id="f-id-passagem"
																	name="id-passagem" required>
																	<option value="DEFAULT">Selecione a passagem</option>
																	<jstl:forEach items="${listaPassagens}" var="passagem">
																		<option value="${passagem.idPassagem}">${passagem.destinoPassagem}</option>
																	</jstl:forEach>
																</select>
															</div>

															<button type="submit" class="btn btn-primary">Enviar</button>
															<input type="button" value="Cancelar" class="btn"
																onclick="../../reserva">
														</form>
														<div class="modal-footer">
															<button type="button" class="btn btn-secondary"
																data-bs-dismiss="modal">Close</button>
															<button type="submit" class="btn btn-primary">Enviar</button>
														</div>
													</div>
												</div>
											</div>--%>
											<!-- MODAL -->
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
	<footer class="py-5 px-3">
		<jsp:include page="../../components/footer.jsp">
			<jsp:param name="srcLogo" value="./assets/img/logo.png" />
		</jsp:include>
	</footer>
	<script src="./assets/js/modal.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>