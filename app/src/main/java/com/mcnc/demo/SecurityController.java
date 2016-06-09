package com.mcnc.demo;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SecurityController {
    
    @RequestMapping ("/index")
    public String login(){
    	
    	if(isAuthenticated()) {
    		return "redirect:/";
    	}
    	else {
    		return "login";
    	}
    }
 
    
    private boolean isAuthenticated() {
    	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
    	return !(authentication instanceof AnonymousAuthenticationToken);
    }
}