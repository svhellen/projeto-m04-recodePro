package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.vivaviatravel.dao.PassagemDAO;
import br.com.vivaviatravel.model.Passagem;

@WebServlet(urlPatterns = { "/passagem", "/passagem-create", "/passagem-details", "/passagem-edit", "/passagem-update",
		"/passagem-delete" })
public class PassagemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PassagemDAO pdao = new PassagemDAO();
	Passagem p = new Passagem();

	public PassagemServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		switch (action) {
		case "/passagem":
			read(request, response);
			break;
		case "/passagem-create":
			create(request, response);
			break;
		case "/passagem-details":
			details(request, response);
			break;
		case "/passagem-edit":
			try {
				edit(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "/passagem-update":
			update(request, response);
			break;
		case "/passagem-delete":
			delete(request, response);
			break;
		default:
			response.sendRedirect("index.html");
			break;
		}
	}

	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<Passagem> lista = pdao.getTodasPassagens();

		request.setAttribute("listaPassagens", lista);

		RequestDispatcher rd = request.getRequestDispatcher("./views/passagemCrud/index.jsp");
		rd.forward(request, response);
	}

	protected void create(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		p.setOrigemPassagem(request.getParameter("origem"));
		p.setDestinoPassagem(request.getParameter("destino"));
		p.setClassePassagem(request.getParameter("classe"));
		p.setDataPassagem(request.getParameter("data"));
		p.setPrecoPassagem(Float.parseFloat(request.getParameter("preco")));

		pdao.save(p);

		response.sendRedirect("passagem");
	}

	protected void edit(HttpServletRequest request, HttpServletResponse response) throws Exception {

		int id = Integer.parseInt(request.getParameter("id"));

		p = pdao.getById(id);
		
		request.setAttribute("passagem", p);

		RequestDispatcher rd = request.getRequestDispatcher("./views/passagemCrud/editar.jsp");
		rd.forward(request, response);
	}

	protected void details(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));

		try {
			p = pdao.getById(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("passagem", p);

		RequestDispatcher rd = request.getRequestDispatcher("./views/passagemCrud/detalhes.jsp");
		rd.forward(request, response);
	}

	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		p.setIdPassagem(id);

		p.setOrigemPassagem(request.getParameter("origem"));
		p.setDestinoPassagem(request.getParameter("destino"));
		p.setClassePassagem(request.getParameter("classe"));
		p.setDataPassagem(request.getParameter("data"));
		p.setPrecoPassagem(Float.parseFloat(request.getParameter("preco")));

		pdao.update(p);

		response.sendRedirect("passagem");
	}

	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));

		pdao.deleteById(id);

		response.sendRedirect("passagem");
	}

}
