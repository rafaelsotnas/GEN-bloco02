package com.atividade2.atividade2.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
@RequestMapping("/atividade2")
public class atividade2Controller {
	@GetMapping
	public String atividade() {
		return "Meus objetivos para esta semana são assimilar melhor"
				+ " o manuseio do banco de dados e identificar cada etapa"
				+ " pertinente ao aprendizado do Spring.";
	}
}
