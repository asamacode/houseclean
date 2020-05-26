package com.asama.houseclean.dao;

import java.util.List;

import com.asama.houseclean.entity.NewsCategory;

public interface NewsCategoryDAO {
    NewsCategory findById(Integer id);

    void save(NewsCategory news);

    void update(NewsCategory news);

    void delete(Integer id);

    List<NewsCategory> findAll();
}
