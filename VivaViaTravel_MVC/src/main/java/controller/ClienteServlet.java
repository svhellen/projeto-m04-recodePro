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
import br.com.vivaviatravel.model.Cliente;

@WebServlet(urlPatterns = { "/cliente", "/cliente-create", "/cliente-edit", "/cliente-update",
		"/cliente-delete" })//, "/cliente-details"
public class ClienteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ClienteDAO cdao = new ClienteDAO();
	Cliente c = new Cliente();

	public ClienteServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		switch (action) {
		case "/cliente":
			read(request, response);
			break;
		case "/cliente-create":
			create(request, response);
			break;
		case "/cliente-edit":
			try {
				edit(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case "/cliente-update":
			update(request, response);
			break;
		case "/cliente-delete":
			delete(request, response);
			break;
		default:
			response.sendRedirect("index.html");
			break;
		}
	}

	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<Cliente> lista = cdao.getClientes();

		request.setAttribute("listaClientes", lista);

		RequestDispatcher rd = request.getRequestDispatcher("./views/clienteCrud/index.jsp");
		rd.forward(request, response);
	}

	protected void create(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		c.setNomeCliente(request.getParameter("nome"));
		c.setTelefoneCliente(request.getParameter("telefone"));
		c.setEmailCliente(request.getParameter("email"));
		c.setSenhaCliente(request.getParameter("senha"));

		cdao.save(c);

		response.sendRedirect("cliente");
	}

	protected void edit(HttpServletRequest request, HttpServletResponse response) throws Exception {

		int id = Integer.parseInt(request.getParameter("id"));

		c = cdao.getById(id);
		
		request.setAttribute("cliente", c);

		RequestDispatcher rd = request.getRequestDispatcher("./views/clienteCrud/editar.jsp");
		rd.forward(request, response);
	}

	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		c.setIdCliente(id);
		c.setNomeCliente(request.getParameter("nome"));
		c.setTelefoneCliente(request.getParameter("telefone"));
		c.setEmailCliente(request.getParameter("email"));

		cdao.update(c);

		response.sendRedirect("cliente");
	}

	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));

		cdao.deleteById(id);

		response.sendRedirect("cliente");
	}

}
