package com.asama.houseclean.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asama.houseclean.entity.Account;
import com.asama.houseclean.service.AccountService;

@Controller
public class AccountController {
    
    @Autowired
    AccountService accountService;
    
    @RequestMapping("/manager/edit-user/{id}")
    public String editUser(Model model, @PathVariable("id") String userId) {
        Account account = accountService.findById(userId);
        model.addAttribute("user", account);
        return "admin/account/register";
    }
    
    @RequestMapping("/manager/list-user")
    public String listUser(Model model) {
        List<Account> accounts = accountService.getAllUser();
        model.addAttribute("users", accounts);
        return "admin/account/list";
    }

    @GetMapping("/account/login")
    public String login() {
        return "admin/account/login";
    }
    
    @GetMapping("/manager/register")
    public String register(Model model) {
        Account account = new Account();
        model.addAttribute("user", account);
        return "admin/account/register";
    }
    
    @PostMapping("/manager/register")
    public String register(Model model,
            @Validated @ModelAttribute("user") Account user,
            BindingResult errors) {
        
        if (errors.hasErrors()) {
            model.addAttribute("message", "Vui lòng nhập thông tin hợp lệ !");
            return "admin/account/register";
        } else {
            if (accountService.checkExistUserId(user.getId())) {
                model.addAttribute("message", "Username này đã tồn tại !");
                return "admin/account/register";
            }
        }
        
        user.setActive(true);
        accountService.saveUser(user);
        model.addAttribute("message", "Thêm thành công !");
        return "admin/account/register";
    }

}
