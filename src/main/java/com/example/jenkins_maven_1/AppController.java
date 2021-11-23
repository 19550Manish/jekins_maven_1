package com.example.jenkins_maven_1;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AppController {
	@GetMapping
	public String test(){
		System.out.println("hello_world");
		return "helloworld";
	}

}
