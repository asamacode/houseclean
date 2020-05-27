package com.asama.houseclean.admin.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.asama.houseclean.entity.Account;
import com.asama.houseclean.entity.News;
import com.asama.houseclean.entity.NewsCategory;
import com.asama.houseclean.service.AccountService;
import com.asama.houseclean.service.NewsCategoryService;
import com.asama.houseclean.service.NewsService;

@Controller
public class AdminNewsController {

    @Autowired
    NewsService newsService;
    
    @Autowired
    NewsCategoryService newsCat;
    
    @Autowired
    AccountService accountService;
    
    @Autowired
    ServletContext app;
    
    @ResponseBody
    @RequestMapping("/manager/news/delete/{id}")
    public Boolean delete(@PathVariable("id") Long id) {
        newsService.delete(id);
        return true;
    }
    
    @PostMapping("/manager/news/edit")
    public String edit(Model model, @Validated @ModelAttribute("news") News news,
            BindingResult errors,
            @RequestParam("news_photo") MultipartFile file) throws IllegalStateException, IOException {
        
        if (errors.hasErrors()) {
            model.addAttribute("message", "Vui lòng nhập thông tin hợp lệ");
            List<NewsCategory> categories = newsCat.findAll();
            model.addAttribute("cats", categories);
            return "admin/news/edit";
        }
        
        if (!file.isEmpty()) {
            news.setImage(file.getOriginalFilename());
            String path = app.getRealPath("/static/images/news/" + news.getImage());
            File f = new File(path);
            file.transferTo(f);
        }
        
        newsService.update(news);
        model.addAttribute("message", "Cập nhật thành công");
        
        return "admin/news/edit";
    }
    
    @GetMapping("/manager/news/edit/{id}")
    public String edit(Model model, @PathVariable("id") Long id) {
        List<NewsCategory> categories = newsCat.findAll();
        model.addAttribute("cats", categories);
        News news = newsService.findById(id);
        model.addAttribute("news", news);
        return "admin/news/edit";
    }
    
    
    @RequestMapping("/manager/news/list")
    public String list(Model model) {
        List<News> news = newsService.findAll();
        model.addAttribute("newss", news);
        return "admin/news/list";
    }
    
    @GetMapping("/admin/news/add")
    public String add(Model model) {
        List<NewsCategory> categories = newsCat.findAll();
        model.addAttribute("cats", categories);
        model.addAttribute("news", new News());
        return "admin/news/add";
    }
    
    @PostMapping("/admin/news/add")
    public String add(RedirectAttributes re, Model model,
            @Validated @ModelAttribute("news") News news,
            BindingResult errors,
            @RequestParam("news_photo") MultipartFile file) throws IllegalStateException, IOException {
        
        if (errors.hasErrors()) {
            model.addAttribute("message", "Vui lòng nhập thông tin hợp lệ");
            List<NewsCategory> categories = newsCat.findAll();
            model.addAttribute("cats", categories);
            return "admin/news/add";
        }
        
        if (file.isEmpty()) {
            news.setImage("news.png");
        } else {
            news.setImage(file.getOriginalFilename());
            String path = app.getRealPath("/static/images/news/" + news.getImage());
            File f = new File(path);
            file.transferTo(f);
        }
        
        Date date = new Date();
        String userName = SecurityContextHolder.getContext().getAuthentication().getName();
        Account account = accountService.findById(userName);
        news.setTimePost(date);
        news.setAccount(account);
        
        newsService.create(news);
        re.addAttribute("message", "Thêm thành công");
        
        return "redirect:/admin/news/add";
    }
}
