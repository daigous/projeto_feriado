package br.com.diegocorp.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.diegocorp.hello.model.Produto;

@RestController
public class HelloController {
	
	@GetMapping("/hello")
	public String sayHello() {
		return "Oi! UFA! Acho que vai!";
	}
	
	@GetMapping("/produto")
	public Produto mostrarProduto() {
		Produto p = new Produto();
		p.setId(987654);
		p.setDescricao("Computador Top de Linha");
		p.setPreco(1098.99);
		return p;
	}
}
