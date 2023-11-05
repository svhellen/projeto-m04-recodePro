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
			<jsp:param name="promocoesClass" value=" nav-link " />
			<jsp:param name="promocoes" value="promocoes.jsp" />
			<jsp:param name="destinosClass" value=" nav-link " />
			<jsp:param name="destinos" value="destinos.jsp" />
			<jsp:param name="contatoClass" value=" nav-link " />
			<jsp:param name="contato" value="contato.jsp" />
			<jsp:param name="btnCrud" value="../../cliente" />
		</jsp:include>
  </header>
    <main id="principal" class="text-center">
        <div class="row p-5">
            <div class="col-md-5"><img src="img/ilustracao.png" class="img-fluid pb-3" alt="castelo de areia na praia"></div>
            <div class="col-md-7 text-start">
                <h1 class="display-2 fw-bold">Oops... página em construção</h1>
                <p>
                    Aqui estamos, preparando o cenário perfeito para sua próxima aventura! <br>
                    Nossa equipe est� a todo vapor, trabalhando para criar uma experiência incrível de viagens. <br>
                    Enquanto ajustamos cada detalhe, sinta-se � vontade para explorar nossas primeiras sugestões e compartilhar suas ideias conosco. 
                </p>
            </div>
        </div>
            
            <a href="index.html" class="btn btn-primary my-5 mx-auto">Ir para a p�gina inicial</a>
            <a href="contato.html" class="btn btn-primary my-5 mx-auto">Entrar em contato</a>
        
    </main>
    <footer class="py-5 px-3">
      <div class="row">
          <!-- logo marca -->
          <div class="col-6 col-md-4 mb-3 text-md-start">
              <a class="footer-brand " href="#"><img src="img/logo.png" alt="logo" id="footer-logo"></a> 
              <p>Descubra o Mundo, Abrace a Jornada!</p>
          </div>
          <!-- links importantes -->
          <div class="col-6 col-md-8 mb-3 text-md-end">
              <ul id="secoes" class="nav pt-5 flex-column flex-md-row ">
              <li class="nav-item mb-2 col">
                <a href="#" class="nav-link p-0 ">Blog</a></li>
              <li class="nav-item mb-2 col">
                <a href="#" class="nav-link p-0 ">Fale conosco</a></li>
              <li class="nav-item mb-2 col">
                <a href="#" class="nav-link p-0  ">Política de privacidade</a></li>
              <li class="nav-item mb-2 col">
                <a href="#" class="nav-link p-0  ">Termos & Condições</a></li>
              </ul>
          </div>
          <!-- copyright e social medias -->
          <div class="d-flex flex-column flex-sm-row justify-content-between py-4 my-4 border-top">
              <p>© 2023 VivaVia Travel, Inc. All rights reserved.</p>
              <div class="social-media list-inline text-md-end">
                  <a class="icon-link icon-link-hover list-inline-item" style="--bs-icon-link-transform: translate3d(0, -.125rem, 0);" href="#">
                  <i class="bi bi-youtube"></i>
                  </a>
                  <a  class="icon-link icon-link-hover list-inline-item" style="--bs-icon-link-transform: translate3d(0, -.125rem, 0);" href="#">
                  <i class="bi bi-instagram"></i></a>
                  <a  class="icon-link icon-link-hover list-inline-item" style="--bs-icon-link-transform: translate3d(0, -.125rem, 0);" href="#">
                  <i class="bi bi-twitter" aria-hidden="true"></i></a>
                  <a  class="icon-link icon-link-hover list-inline-item" style="--bs-icon-link-transform: translate3d(0, -.125rem, 0);" href="#">
                  <i class="bi bi-facebook" aria-hidden="true"></i></a>
              </div>
          </div>
      </div>
  </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>