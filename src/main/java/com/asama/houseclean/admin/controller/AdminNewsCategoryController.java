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
import org.springframework.web.bind.annotation.ResponseBody;

import com.asama.houseclean.entity.NewsCategory;
import com.asama.houseclean.service.NewsCategoryService;

@Controller
@RequestMapping("/manager/newscategory")
public class AdminNewsCategoryController {
    
    @Autowired
    NewsCategoryService newsCategoryService;
    
    @ResponseBody
    @RequestMapping("/delete/{id}")
    public Boolean delete(Model model, @PathVariable("id") Integer id) {
        newsCategoryService.delete(id);
        return true;
    }
    
    
    @RequestMapping("/list")
    public String list(Model model) {
        List<NewsCategory> categories = newsCategoryService.findAll();
        model.addAttribute("cats", categories);
        return "admin/category/list";
    }
    
    @GetMapping("/edit/{id}")
    public String add(Model model, @PathVariable("id") Integer id) {
        NewsCategory category = newsCategoryService.findById(id);
        model.addAttribute("cat", category);
        return "admin/category/edit";
    }
    
    @PostMapping("/edit")
    public String edit(Model model,
            @Validated @ModelAttribute("cat") NewsCategory category,
            BindingResult errors) {
        if (errors.hasErrors()) {
            model.addAttribute("message", "Vui lòng nhập thông tin hợp lệ !");
            return "admin/category/edit";
        }
        
        newsCategoryService.update(category);
        model.addAttribute("message", "Cập nhật thành công !");
        return "admin/category/edit";
    }

    @GetMapping("/add")
    public String add(Model model) {
        NewsCategory category = new NewsCategory();
        model.addAttribute("cat", category);
        return "admin/category/add";
    }
    
    @PostMapping("/add")
    public String add(Model model,
            @Validated @ModelAttribute("cat") NewsCategory category,
            BindingResult errors) {
        if (errors.hasErrors()) {
            model.addAttribute("message", "Vui lòng nhập thông tin hợp lệ !");
            return "admin/category/add";
        }
        
        newsCategoryService.create(category);
        model.addAttribute("message", "Thêm thành công !");
        return "admin/category/add";
    }
}
