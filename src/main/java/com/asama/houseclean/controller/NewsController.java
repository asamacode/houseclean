package com.asama.houseclean.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asama.houseclean.entity.News;
import com.asama.houseclean.entity.NewsCategory;
import com.asama.houseclean.service.NewsCategoryService;
import com.asama.houseclean.service.NewsService;

@Controller
@RequestMapping("/news")
public class NewsController {
    
    @Autowired
    NewsService newsService;
    
    @Autowired
    NewsCategoryService catService;
    
    @RequestMapping(value = {"/list/{page}", "/list"})
    public String getPage(Model model, @PathVariable(name = "page", required = false) Integer pageNum) {
        if (pageNum == null) {
            pageNum = 1;
        }
        List<News> news = newsService.getPage(pageNum - 1);
        Integer pageCount = newsService.getPageCount();
        model.addAttribute("newss", news);
        model.addAttribute("pageCount", pageCount);
        model.addAttribute("page", pageNum);
        return "news/list_all";
    }
    
    @RequestMapping("/list-by-category/{id}")
    public String listByCat(Model model, @PathVariable("id") Integer id) {
        NewsCategory category = catService.findById(id);
        model.addAttribute("cat", category);
        List<News> newss = category.getNews();
        model.addAttribute("newss", newss);
        return "news/list";
    }

    @RequestMapping("/detail/{id}")
    public String detail(Model model, @PathVariable("id") Long id) {
        News news = newsService.findById(id);
        List<NewsCategory> categories = catService.findAll();
        model.addAttribute("news", news);
        model.addAttribute("cats", categories);
        return "news/detail";
    }
    
}
