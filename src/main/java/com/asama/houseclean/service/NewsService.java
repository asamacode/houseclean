package com.asama.houseclean.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.asama.houseclean.dao.NewsDAO;
import com.asama.houseclean.entity.News;

@Service
public class NewsService {

    @Autowired
    NewsDAO newsDAO;

    public void create(News news) {
        newsDAO.save(news);
    }

    public List<News> findAll() {
        return newsDAO.findAll();
    }

    public News findById(Long id) {
        return newsDAO.findById(id);
    }

    public void update(News news) {
        newsDAO.update(news);
    }

    public void delete(Long id) {
       newsDAO.delete(id);
    }
}
