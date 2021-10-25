package br.edu.infnet.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.infnet.model.Usuario;
import br.edu.infnet.repository.UsuarioRepository;

public class UsuarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
 
    public UsuarioController() {
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("home.jsp").forward(request, response);

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Usuario usuario = new Usuario(request.getParameter("nome"), request.getParameter("email"));
		usuario.setSenha(request.getParameter("senha"));
		UsuarioRepository.salvar(usuario);
		request.setAttribute("nomeUsuario", usuario.getNome());
		request.setAttribute("emailUsuario", usuario.getEmail());
		request.setAttribute("usuarios", UsuarioRepository.retornarLista());

		
		

		request.getRequestDispatcher("sucesso.jsp").forward(request, response);
	}

}
