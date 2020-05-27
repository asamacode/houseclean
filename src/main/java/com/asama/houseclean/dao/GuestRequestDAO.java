package com.asama.houseclean.dao;

import java.util.List;
import java.util.Optional;

import com.asama.houseclean.entity.GuestRequest;

public interface GuestRequestDAO {

    GuestRequest findById(Long id);

    GuestRequest save(GuestRequest request);

    void update(GuestRequest request);

    void delete(Long id);

    List<GuestRequest> findAll();

    Optional<GuestRequest> findByIdAndStatus(Long id);
}
