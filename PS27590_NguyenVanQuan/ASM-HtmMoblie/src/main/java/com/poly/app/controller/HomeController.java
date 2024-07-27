package com.poly.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.poly.app.Impl.ShoppingCartServiceImpl;

@Controller
public class HomeController {

	@Autowired
	ShoppingCartServiceImpl shoppingCartServiceImpl;

	@ModelAttribute("numberCartItem")
	public int getnumberCartItem() {
		return shoppingCartServiceImpl.getCount() != 0 ? shoppingCartServiceImpl.getCount() : 0;
	}


	@GetMapping("index")
	public String index() {
		return "index";
	}

	@GetMapping("favorite")
	public String favorite() {
		return "favorite";
	}
}
