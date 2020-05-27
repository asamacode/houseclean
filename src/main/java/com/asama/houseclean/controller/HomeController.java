package com.asama.houseclean.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asama.houseclean.entity.News;
import com.asama.houseclean.entity.Service;
import com.asama.houseclean.service.NewsService;
import com.asama.houseclean.service.ServicesService;

@Controller
public class HomeController {
    
    @Autowired
    ServicesService servicesService;
    
    @Autowired
    NewsService newsService;

    @RequestMapping(value = {"/home", "/"})
    public String home(Model model) {
        List<Service> services = servicesService.getListSpecialServices();
        List<News> news = newsService.getListNewest();
        model.addAttribute("s_special", services);
        model.addAttribute("n_newest", news);
        return "home/index";
    }
   
}
