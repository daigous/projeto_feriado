package br.com.diegocorp.projetoferiado.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/* O objetivo aqui é criar objetos de negócio (model) que mapeiam seus nomes e atributos para tabelas e campos do Banco de Dados.
 * 
 * Como?
 * Mapeamos cabeçalho de classes -> TABELAS
 * Mapeamos atributos			 -> COLUNAS.
 */

@Entity // Aqui eu defino que Agencia será uma entidade armazenável.
@Table(name="itmn330_agencia") // Aqui eu especifico o nome da tabela correspondente.
public class Agencia {
	
	@Id													// Aqui eu indico que é chave primária.
	@GeneratedValue(strategy=GenerationType.IDENTITY)	// Aqui eu falo que é AUTO-INCREMENT
	@Column(name="id_agencia")							// Aqui eu falo o nome da coluna correspondente.
	private int		id;
	
	@Column(name="numero_agencia", unique = true)
	private int		numero;
	
	@Column(name="nome_agencia", length = 100)
	private String	nome;
	
	// Início dos GETTERS e SETTERS:
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getNumero() {
		return numero;
	}
	public void setNumero(int numero) {
		this.numero = numero;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
}
