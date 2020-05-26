package com.asama.houseclean.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asama.houseclean.entity.Service;
import com.asama.houseclean.service.ServicesService;

@Controller
public class HomeController {
    
    @Autowired
    ServicesService servicesService;

    @RequestMapping(value = {"/home", "/"})
    public String home(Model model) {
        List<Service> services = servicesService.getListSpecialServices();
        model.addAttribute("s_special", services);
        return "home/index";
    }
   
}
