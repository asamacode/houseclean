package com.asama.houseclean.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.asama.houseclean.entity.GuestRequest;

@Repository
@Transactional
public class GuestRequestDAOImpl implements GuestRequestDAO {

    @Autowired
    SessionFactory factory;

    @Override
    public GuestRequest findById(Long id) {
        Session session = factory.getCurrentSession();
        return session.find(GuestRequest.class, id);
    }

    @Override
    public void save(GuestRequest request) {
        Session session = factory.getCurrentSession();
        session.save(request);
    }

    @Override
    public void update(GuestRequest request) {
        Session session = factory.getCurrentSession();
        session.update(request);
    }

    @Override
    public void delete(Long id) {
        Session session = factory.getCurrentSession();
        GuestRequest gRequest = session.find(GuestRequest.class, id);
        session.delete(gRequest);
    }

    @Override
    public List<GuestRequest> findAll() {
        String hql = "FROM GuestRequest";
        Session session = factory.getCurrentSession();

        TypedQuery<GuestRequest> query = session.createQuery(hql, GuestRequest.class);
        List<GuestRequest> requests = query.getResultList();
        return requests;
    }

}
