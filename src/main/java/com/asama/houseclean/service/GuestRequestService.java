package com.asama.houseclean.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.asama.houseclean.dao.GuestRequestDAO;
import com.asama.houseclean.entity.GuestRequest;

@Service
public class GuestRequestService {

    @Autowired
    GuestRequestDAO gDao;
    
    public GuestRequest create(GuestRequest request) {
        return gDao.save(request);
    }

    public List<String> initTimes() {
        List<String> tList = new ArrayList<String>();
        tList.add("7h-9h");
        tList.add("9h-11h");
        tList.add("11h-13h");
        tList.add("13h-15h");
        tList.add("15h-17h");
        tList.add("17h-19h");
        tList.add("Trong giờ hành chính");
        tList.add("Ngoài giờ hành chính");
        return tList;
    }

    public GuestRequest findById(Long id) {
        return gDao.findById(id);
    }

    public void update(GuestRequest guestRequest) {
       gDao.update(guestRequest);
    }

    public Optional<GuestRequest> findByIdAndStatus(Long id) {
        return gDao.findByIdAndStatus(id);
    }

    public List<GuestRequest> getAcceptPage(Integer page) {
        return gDao.getListAcceptByPage(page);
    }
    
    public Integer getAcceptPageCount() {
        return gDao.getAcceptPageCount();
    }

    public List<GuestRequest> getProcessPage(int i) {
        return gDao.getListProcesstByPage(i);
    }

    public Integer getProcessPageCount() {
        return gDao.getProcessPageCount();
    }

    public List<GuestRequest> getCompletePage(int i) {
        return gDao.getListCompleteByPage(i);
    }

    public Integer getCompletePageCount() {
       return gDao.getCompletePageCount();
    }

    public List<GuestRequest> getCancelPage(int i) {
        return gDao.getListCanceltByPage(i);
    }

    public Integer getCancelPageCount() {
        return gDao.getCancelPageCount();
    }
}
