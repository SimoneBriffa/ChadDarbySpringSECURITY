package com.luv2code.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
	
	@GetMapping("/showMyLoginPage")
	public String showMyLoginPage() {
		
		return "fancy-login";
	}
	
	
	//il fatto che mettiamo la request mapping per la pagina di non autorizzazione qui
	//e non su DemoController non ha ragioni tecniche, è equivalente
	
	@GetMapping("/access_denied")
	public String showAccessDenied() {
		
		return "access_denied";
	}
	
	
}
