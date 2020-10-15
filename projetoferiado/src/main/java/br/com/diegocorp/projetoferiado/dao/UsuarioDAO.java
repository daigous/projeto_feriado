package br.com.diegocorp.projetoferiado.dao;

import org.springframework.data.repository.CrudRepository;
import br.com.diegocorp.projetoferiado.model.Usuario;

public interface UsuarioDAO extends CrudRepository<Usuario,Integer> {
	
	// findBy = SELECT * FROM TBL_USUARIO WHERE ***
	public Usuario findByRacfAndSenha(String racf, String senha);
	public Usuario findByRacf(String racf);
	public Usuario findByRacfOrFuncional(String racf, String funcional);
}
