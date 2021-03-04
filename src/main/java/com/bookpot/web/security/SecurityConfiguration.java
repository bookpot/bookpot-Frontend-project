package com.bookpot.web.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter{

	@Autowired
	public void configureGlobalSecurity(AuthenticationManagerBuilder auth)
		throws Exception{
		//admin : user과 admin의 role을 갖는다.
		auth.inMemoryAuthentication().withUser("admin")
									.password("test")
									.roles("USER", "ADMIN");
	}
	
	@Override
	public void configure(WebSecurity web) throws Exception {
		// 리소스 인증 무시
		web.ignoring().antMatchers("/resources/**");
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		// /login 은 누구나 접근 가능
		// /user/** 은 user의 role을 가질 경우만 접근 가능
		// /admin/** 은 admin의 role을 가질 경우만 접근 가능
		// 위의 두 role이 없으면 formLogin
		http.authorizeRequests().antMatchers("/login").permitAll()
			.antMatchers("/user/**").access("hasRole('USER')")
			.antMatchers("/admin/**").access("hasRole('ADMIN')").and()
			.formLogin();
	}
}
