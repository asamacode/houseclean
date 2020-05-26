package com.asama.houseclean.dao;

import java.util.List;

import com.asama.houseclean.entity.Service;

public interface ServiceDAO {

    Service findById(Integer id);
    
    void save(Service service);
    
    void update(Service service);
    
    void delete(Integer id);
    
    List<Service> findAll();

    List<Service> findAllSpecial();
}
