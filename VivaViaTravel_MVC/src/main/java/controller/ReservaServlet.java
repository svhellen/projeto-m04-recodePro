package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.vivaviatravel.dao.ClienteDAO;
import br.com.vivaviatravel.dao.PassagemDAO;
import br.com.vivaviatravel.dao.ReservaDAO;
import br.com.vivaviatravel.model.Cliente;
import br.com.vivaviatravel.model.Passagem;
import br.com.vivaviatravel.model.Reserva;

@WebServlet(urlPatterns = { "/reserva", "/reserva-getCreate", "/reserva-create", "/reserva-details", "/reserva-edit",
		"/reserva-update", "/reserva-delete" })
public class ReservaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ReservaDAO rdao = new ReservaDAO();
	PassagemDAO pdao = new PassagemDAO();
	ClienteDAO cdao = new ClienteDAO();
	Reserva r = new Reserva();
	Passagem p = new Passagem();
	Cliente c = new Cliente();

	public ReservaServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		switch (action) {
		case "/reserva":
			read(request, response);
			break;
		case "/reserva-getCreate":
			getCreate(request, response);
			break;
		case "/reserva-create":
			create(request, response);
			break;
		case "/reserva-details":
			details(request, response);
			break;
		case "/reserva-edit":
			try {
				edit(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "/reserva-update":
			update(request, response);
			break;
		case "/reserva-delete":
			delete(request, response);
			break;
		default:
			response.sendRedirect("index.html");
			break;
		}
	}

	protected void read(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		List<Reserva> lista = rdao.getReservas();

		request.setAttribute("listaReservas", lista);

		RequestDispatcher rd = request.getRequestDispatcher("./views/reservaCrud/index.jsp");
		rd.forward(request, response);
	}

	protected void getCreate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Cliente> cLista = cdao.getClientes();
		request.setAttribute("listaClientes", cLista);

		List<Passagem> pLista = pdao.getTodasPassagens();
		request.setAttribute("listaPassagens", pLista);

		RequestDispatcher rd = request.getRequestDispatcher("./views/reservaCrud/create.jsp");
		rd.forward(request, response);
	}

	protected void create(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			p = pdao.getById(Integer.parseInt(request.getParameter("id-passagem")));
			c = cdao.getById(Integer.parseInt(request.getParameter("id-cliente")));
		} catch (Exception e) {
			e.printStackTrace();
		}

		r = new Reserva(p, c);

		rdao.save(r);

		response.sendRedirect("reserva");
	}

	protected void edit(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		try {
			r = rdao.getById(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("reserva", r);

		List<Cliente> cLista = cdao.getClientes();
		request.setAttribute("listaClientes", cLista);

		List<Passagem> pLista = pdao.getTodasPassagens();
		request.setAttribute("listaPassagens", pLista);

		RequestDispatcher rd = request.getRequestDispatcher("./views/reservaCrud/editar.jsp");
		rd.forward(request, response);
	}

	protected void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		r.setIdReserva(id);

		try {
			r.setPassagem(pdao.getById(Integer.parseInt(request.getParameter("id-passagem"))));
			r.setCliente(cdao.getById(Integer.parseInt(request.getParameter("id-cliente"))));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		rdao.update(r);

		response.sendRedirect("reserva");
	}

	protected void details(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));

		try {
			r = rdao.getById(id);
			r.getPassagem().getOrigemPassagem();
			System.out.println(r.getPassagem());
		} catch (Exception e) {
			e.printStackTrace();
		}

		request.setAttribute("reserva", r);

		RequestDispatcher rd = request.getRequestDispatcher("./views/reservaCrud/detalhes.jsp");
		rd.forward(request, response);
	}

	protected void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));

		rdao.deleteById(id);

		response.sendRedirect("reserva");
	}

}
