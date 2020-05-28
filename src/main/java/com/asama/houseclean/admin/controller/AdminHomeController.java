package com.asama.houseclean.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asama.houseclean.entity.Account;
import com.asama.houseclean.service.AccountService;

@Controller
@RequestMapping("/admin")
public class AdminHomeController {

    @Autowired
    AccountService accService;
    
    @RequestMapping("/home")
    public String home(Model model) {
        String id = SecurityContextHolder.getContext().getAuthentication().getName();
        Account account = accService.findById(id);
        model.addAttribute("u", account);
        return "admin/home/index";
    }
}
