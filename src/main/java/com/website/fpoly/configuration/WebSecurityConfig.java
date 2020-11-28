package com.website.fpoly.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.website.fpoly.service.impl.UserDetailsServiceImpl;

@EnableWebSecurity
@Configuration
@EnableGlobalMethodSecurity(securedEnabled = true, proxyTargetClass = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	
	
	@Bean
	public UserDetailsService userDetailsService() {
		return new UserDetailsServiceImpl();
	};

	@Bean
	public BCryptPasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	};

	
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService()).passwordEncoder(passwordEncoder());
	}
	
//	@Autowired
//	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
//		auth.userDetailsService(userDetailsService()).passwordEncoder(passwordEncoder());
//	}
//	

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		/*
		 * // Chỉ cho phép user có quyền ADMIN truy cập đường dẫn /admin/**
		 * http.authorizeRequests().antMatchers("/admin/**").access(
		 * "hasRole('ROLE_SUPPER_ADMIN')"); // Chỉ cho phép user có quyền ADMIN hoặc
		 * USER truy cập đường dẫn // /user/**
		 * http.authorizeRequests().antMatchers("/shop/**").
		 * access("hasRole('ROLE_ADMIN') or hasRole('ROLE_USER')"); // Khi người dùng đã
		 * login, với vai trò USER, Nhưng truy cập vào trang // yêu cầu vai trò ADMIN,
		 * sẽ chuyển hướng tới trang /403
		 * http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/403");
		 */
		// Cấu hình remember me, thời gian là 1296000 giây
	    http.rememberMe().key("uniqueAndSecret").tokenValiditySeconds(1296000);
	    
		http.authorizeRequests().antMatchers("/", "/shop/**", "/home/**", "/error", "/uploads/**", "/resources/**",
				"/error", "/login", "/forgotPassword", "/changePassword", "/resetPassword").permitAll()
//				.antMatchers("/views/student/**").access("hasRole('USER')")
				.antMatchers("/admin/**").hasRole("AUTH").anyRequest().authenticated().and().formLogin()
				.loginPage("/login").defaultSuccessUrl("/admin/customer/", true)
//				.loginPage("/shop/login_customer").defaultSuccessUrl("/shop/")
//				.defaultSuccessUrl("/admin/timeSheets/")
				.failureUrl("/login?error").permitAll().and().logout().permitAll().logoutSuccessUrl("/login").and()
				.csrf().disable();
	}

}
