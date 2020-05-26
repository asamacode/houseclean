package com.asama.houseclean.dao;

import java.util.List;

import com.asama.houseclean.entity.News;

public interface NewsDAO {

    News findById(Long id);
    
    void save(News news);
    
    void update(News news);
    
    void delete(Long id);
    
    List<News> findAll();
}
