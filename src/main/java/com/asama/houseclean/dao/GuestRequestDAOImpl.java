package com.asama.houseclean.dao;

import java.util.List;
import java.util.Optional;

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

    private static final Integer LIMIT = 9; 
    
    @Autowired
    SessionFactory factory;

    @Override
    public GuestRequest findById(Long id) {
        Session session = factory.getCurrentSession();
        return session.find(GuestRequest.class, id);
    }

    @Override
    public GuestRequest save(GuestRequest request) {
        Session session = factory.getCurrentSession();
        session.save(request);
        return request;
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

    @Override
    public Optional<GuestRequest> findByIdAndStatus(Long id) {
        String hql = "FROM GuestRequest g WHERE g.id = :gid AND g.status = " + GuestRequest.STT_PROCESS;
        Session session = factory.getCurrentSession();

        TypedQuery<GuestRequest> query = session.createQuery(hql, GuestRequest.class);
        query.setParameter("gid", id);
        Optional<GuestRequest> request = Optional.of(query.getSingleResult());
        return request;
    }

    @Override
    public List<GuestRequest> getListAcceptByPage(Integer page) {
        String hql = "FROM GuestRequest g WHERE g.status = " + GuestRequest.STT_ACCEPT;
        Session session = factory.getCurrentSession();

        TypedQuery<GuestRequest> query = session.createQuery(hql, GuestRequest.class);
        query.setFirstResult(LIMIT * page);
        query.setMaxResults(LIMIT);
        List<GuestRequest> request =query.getResultList();
        return request;
    }
    
    @Override
    public Integer getAcceptPageCount() {
        String hql = "SELECT COUNT(g) FROM GuestRequest g WHERE g.status = " + GuestRequest.STT_ACCEPT;

        Session session = factory.getCurrentSession();
        TypedQuery<Long> query = session.createQuery(hql, Long.class);
        Long rowCount = query.getSingleResult();
        Integer pageCount = (int) Math.ceil(1.0*rowCount/LIMIT);
        return pageCount;
    }

    @Override
    public List<GuestRequest> getListProcesstByPage(Integer page) {
        String hql = "FROM GuestRequest g WHERE g.status = " + GuestRequest.STT_PROCESS;
        Session session = factory.getCurrentSession();

        TypedQuery<GuestRequest> query = session.createQuery(hql, GuestRequest.class);
        query.setFirstResult(LIMIT * page);
        query.setMaxResults(LIMIT);
        List<GuestRequest> request =query.getResultList();
        return request;
    }

    @Override
    public Integer getProcessPageCount() {
        String hql = "SELECT COUNT(g) FROM GuestRequest g WHERE g.status = " + GuestRequest.STT_PROCESS;

        Session session = factory.getCurrentSession();
        TypedQuery<Long> query = session.createQuery(hql, Long.class);
        Long rowCount = query.getSingleResult();
        Integer pageCount = (int) Math.ceil(1.0*rowCount/LIMIT);
        return pageCount;
    }

    @Override
    public List<GuestRequest> getListCompleteByPage(Integer page) {
        String hql = "FROM GuestRequest g WHERE g.status = " + GuestRequest.STT_COMPLETED;
        Session session = factory.getCurrentSession();

        TypedQuery<GuestRequest> query = session.createQuery(hql, GuestRequest.class);
        query.setFirstResult(LIMIT * page);
        query.setMaxResults(LIMIT);
        List<GuestRequest> request =query.getResultList();
        return request;
    }

    @Override
    public Integer getCompletePageCount() {
        String hql = "SELECT COUNT(g) FROM GuestRequest g WHERE g.status = " + GuestRequest.STT_COMPLETED;

        Session session = factory.getCurrentSession();
        TypedQuery<Long> query = session.createQuery(hql, Long.class);
        Long rowCount = query.getSingleResult();
        Integer pageCount = (int) Math.ceil(1.0*rowCount/LIMIT);
        return pageCount;
    }

    @Override
    public List<GuestRequest> getListCanceltByPage(Integer page) {
        String hql = "FROM GuestRequest g WHERE g.status = " + GuestRequest.STT_CANCEL;
        Session session = factory.getCurrentSession();

        TypedQuery<GuestRequest> query = session.createQuery(hql, GuestRequest.class);
        query.setFirstResult(LIMIT * page);
        query.setMaxResults(LIMIT);
        List<GuestRequest> request =query.getResultList();
        return request;
    }

    @Override
    public Integer getCancelPageCount() {
        String hql = "SELECT COUNT(g) FROM GuestRequest g WHERE g.status = " + GuestRequest.STT_CANCEL;

        Session session = factory.getCurrentSession();
        TypedQuery<Long> query = session.createQuery(hql, Long.class);
        Long rowCount = query.getSingleResult();
        Integer pageCount = (int) Math.ceil(1.0*rowCount/LIMIT);
        return pageCount;
    }

}
