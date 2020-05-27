package com.asama.houseclean.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.asama.houseclean.dao.NewsCategoryDAO;
import com.asama.houseclean.entity.NewsCategory;

@Service
public class NewsCategoryService {

    @Autowired
    NewsCategoryDAO newsCategoryDAO;

    public void create(NewsCategory category) {
       newsCategoryDAO.save(category);
    }

    public NewsCategory findById(Integer id) {
        return newsCategoryDAO.findById(id);
    }

    public void update(NewsCategory category) {
       newsCategoryDAO.update(category);
    }

    public List<NewsCategory> findAll() {
        return newsCategoryDAO.findAll();
    }

    public void delete(Integer id) {
       newsCategoryDAO.delete(id);
    }
}
