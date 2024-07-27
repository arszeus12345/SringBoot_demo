package com.poly.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("contact")
public class Contact {
	@GetMapping("views")
	public String index() {
		return "contact";
	}
}
