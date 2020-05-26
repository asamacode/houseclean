package com.asama.houseclean.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.asama.houseclean.dao.ServiceDAO;

@Service
public class ServicesService {

    @Autowired
    ServiceDAO serviceDAO;

    public void create(com.asama.houseclean.entity.Service service) {
        serviceDAO.save(service);
    }

    public List<com.asama.houseclean.entity.Service> getListServices() {
        return serviceDAO.findAll();
    }
    
    public List<com.asama.houseclean.entity.Service> getListSpecialServices() {
        return serviceDAO.findAllSpecial();
    }

    public com.asama.houseclean.entity.Service findById(Integer sId) {
        return serviceDAO.findById(sId);
    }

    public void update(com.asama.houseclean.entity.Service service) {
        serviceDAO.update(service);
    }

    public void delete(Integer sId) {
       serviceDAO.delete(sId);
    }
}
