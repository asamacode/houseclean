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

    List<GuestRequest> getListAcceptByPage(Integer page);

    Integer getAcceptPageCount();
    
    List<GuestRequest> getListProcesstByPage(Integer page);

    Integer getProcessPageCount();
    
    List<GuestRequest> getListCompleteByPage(Integer page);

    Integer getCompletePageCount();
    
    List<GuestRequest> getListCanceltByPage(Integer page);

    Integer getCancelPageCount();
}
