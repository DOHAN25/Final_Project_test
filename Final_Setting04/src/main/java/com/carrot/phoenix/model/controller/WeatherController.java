package com.carrot.phoenix.model.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WeatherController {

	@RequestMapping("/weather.do")
	public String weatherForm() {
			return "weather";
	}
	
	@RequestMapping("/test.do")
	public String test() {
			return "test";
	}
}

