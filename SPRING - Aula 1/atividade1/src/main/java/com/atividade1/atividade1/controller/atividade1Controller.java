package com.atividade1.atividade1.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
@RequestMapping("/atividade1")
public class atividade1Controller {
	@GetMapping
	public String atividade() {
		return "Para a conclusão desta atividade utilizei a habilidade"
				+ "de persistência e a mentalidade de crescimento.";
	}
}
