package br.com.diegocorp.projetoferiado.dao;

import org.springframework.data.repository.CrudRepository;
import br.com.diegocorp.projetoferiado.model.Feriado;

public interface FeriadoDAO extends CrudRepository<Feriado,Integer> {

}
