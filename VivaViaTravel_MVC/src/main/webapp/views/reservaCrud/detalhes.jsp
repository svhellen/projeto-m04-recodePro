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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <!-- bootstrap icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="shortcut icon" href="./assets/img/favicon.ico" type="image/x-icon">
    <title>VivaVia Travel</title>
</head>
<body class=" bg-body-secondary">
  <header class="row">
    <!-- navbar -->
      <nav class="navbar navbar-expand-md navbar-dark" id="menu">
    </nav>
  </header>

    <main class=" ">

		<div class="row text-center gap-3 m-3">
			<h1>Reservas</h1>
			<jsp:include page="../../components/menu.jsp">
				<jsp:param name="home" value="./index.jsp" />
				<jsp:param name="clientes" value="cliente" />
				<jsp:param name="passagens" value="passagem" />
				<jsp:param name="reservas" value="reserva" />
			</jsp:include>
		</div>
		
		<section class="container mx-auto p-4">
			<h2 class=" "> Detalhes reserva </h2>
			<table class="table-light table-responsive text-center px-3">
				<thead>
					<tr>
						<th>Id reserva</th>
						<th>Origem</th>
						<th>Destino</th>
						<th>Classe</th>
						<th>Data</th>
						<th>Preço</th>
						<th>Ações</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${reserva.idReserva}</td>
						<td>${reserva.getPassagem().getOrigemPassagem()}</td>
						<td>${reserva.passagem.destinoPassagem}</td>
						<td>${reserva.passagem.classePassagem}</td>
						<td>${reserva.passagem.dataPassagem}</td>
						<td>${reserva.passagem.precoPassagem}</td>
						<td>
							<a href="reserva-edit?id=${reserva.idReserva}" class="btn btn-success">Editar</a>  
							<a href="reserva-delete?id=${reserva.idReserva}" onclick="return confirm('Deseja Excluir?')" class="btn btn-danger">Excluir</a>
						</td>
					</tr>
				</tbody>
			</table>
		</section>
		
	</main>
    <footer class="py-5 px-3">

  </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>