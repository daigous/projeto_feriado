package br.com.diegocorp.projetoferiado.dao;

import org.springframework.data.repository.CrudRepository;
import br.com.diegocorp.projetoferiado.model.Agencia;

public interface AgenciaDAO extends CrudRepository<Agencia,Integer> {
	
}