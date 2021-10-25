package br.edu.infnet.repository;

import java.util.ArrayList;
import java.util.List;

import br.edu.infnet.model.Usuario;

public class UsuarioRepository {
	
	private static List<Usuario> lista;
	
	private static void iniciar() {
		if(lista == null) {
			lista = new ArrayList<Usuario>();
		}
	}

	
	public static boolean salvar(Usuario usuario) {
		try {
			iniciar();
			lista.add(usuario);
			return true;
		} catch (Exception e) {
			return false;		
		}
	}
	
	public static List<Usuario> retornarLista(){
		
		return lista;
		
	}

}
