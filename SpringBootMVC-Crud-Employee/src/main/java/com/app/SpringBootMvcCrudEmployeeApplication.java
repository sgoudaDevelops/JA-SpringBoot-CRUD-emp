package com.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class SpringBootMvcCrudEmployeeApplication extends SpringBootServletInitializer{
	protected SpringApplicationBuilder configure (SpringApplicationBuilder Spring) {
		return Spring.sources(SpringBootMvcCrudEmployeeApplication.class);
	}
	
	public static void main(String[] args) {
		SpringApplication.run(SpringBootMvcCrudEmployeeApplication.class, args);
	}
	
	

}
