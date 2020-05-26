package com.asama.houseclean.dao;

import java.util.List;

import com.asama.houseclean.entity.GuestRequest;

public interface GuestRequestDAO {

    GuestRequest findById(Long id);

    void save(GuestRequest request);

    void update(GuestRequest request);

    void delete(Long id);

    List<GuestRequest> findAll();
}
