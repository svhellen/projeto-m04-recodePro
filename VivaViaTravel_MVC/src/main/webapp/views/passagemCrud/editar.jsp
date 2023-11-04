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
<body>
	<main>
		<div class="row text-center gap-3 m-3">
			<h1>Passagens</h1>
			<jsp:include page="../../components/menu.jsp">
				<jsp:param name="home" value="./index.jsp" />
				<jsp:param name="clientes" value="cliente" />
				<jsp:param name="passagens" value="passagem" />
				<jsp:param name="reservas" value="reserva" />
			</jsp:include>
		</div>
<%-- 		<h2>Edição do cliente ${cliente.nomeCliente}</h2>
		<form name="frmCliente" action="../../cliente-update" class="form-cliente">
			<input type="text" name="id" value="${cliente.idCliente}" class="caixa" readonly></input>
			<input type="text" name="nome" value="${cliente.nomeCliente}" class="caixa"></input>
			<input type="text" name="telefone" value="${cliente.telefoneCliente}" class="caixa"></input>
			<input type="text" name="email" value="${cliente.emailCliente}" class="caixa"></input>
		</form> --%>
		
	<div class="container-fluid py-5" id="div-form-contato">
   <form action="./passagem-update" class="form-control d-grid gap-4 mx-auto p-3">
   		<input type="hidden" id="id" name="id" value="${passagem.idPassagem}">
          <div>
              <h1 style="font-size: 1.3em; text-align: center;">Cadastrar passagem</h1>
          </div>
          <div class="">
              <label for="f-origem">Origem</label>
              <input type="text" class="form-control" id="f-origem" name="origem" placeholder="${passagem.origemPassagem}" required>
          </div>
          <div class="">
              <label for="f-destino">Destino</label>
              <input type="text" class="form-control" id="f-destino" name="destino"  placeholder="${passagem.destinoPassagem}" required>
          </div>
          <div class="">
               <label for="f-classe">Classe</label>
               <input type="text" class="form-control" id="f-classe" name="classe"  placeholder="${passagem.classePassagem}" required>
          </div>
          <div class="">
               <label for="f-data">Data</label>
               <input type="date" class="form-control" id="f-data" name="data" required>
          </div>
          <div class="">
              <label for="f-preco">Preço</label>
              <input type="text" class="form-control" id="f-preco"  name="preco" placeholder="${passagem.precoPassagem}" required>
          </div>
        <button type="submit" class="btn btn-primary">Enviar</button>
		<input type="button" value="Cancelar" class="btn" onclick="../../cliente">
      </form>
    </div>
	</main>
	<script src="scripts/validador.js"></script>
</body>
</html>