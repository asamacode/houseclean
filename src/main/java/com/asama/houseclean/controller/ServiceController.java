package com.asama.houseclean.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asama.houseclean.entity.Service;
import com.asama.houseclean.service.ServicesService;

@Controller
@RequestMapping("/services")
public class ServiceController {

    @Autowired
    ServicesService servicesService;
    
    @RequestMapping("/detail/{id}")
    public String detail(Model model,
            @PathVariable("id") Integer sId) {
        Service s = servicesService.findById(sId);
        model.addAttribute("service", s);
        return "service/detail";
    }
}
