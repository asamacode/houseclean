package com.asama.houseclean.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.asama.houseclean.entity.Service;

@Repository
@Transactional
public class ServiceDAOImpl implements ServiceDAO {

    @Autowired
    SessionFactory factory;

    @Override
    public Service findById(Integer id) {
        Session session = factory.getCurrentSession();
        return session.find(Service.class, id);
    }

    @Override
    public void save(Service service) {
        Session session = factory.getCurrentSession();
        session.save(service);
    }

    @Override
    public void update(Service service) {
        Session session = factory.getCurrentSession();
        session.update(service);
    }

    @Override
    public void delete(Integer id) {
        Session session = factory.getCurrentSession();
        Service service = session.find(Service.class, id);
        session.delete(service);
    }

    @Override
    public List<Service> findAll() {
        String hql = "FROM Service";
        Session session = factory.getCurrentSession();

        TypedQuery<Service> query = session.createQuery(hql, Service.class);
        List<Service> services = query.getResultList();
        return services;
    }

    @Override
    public List<Service> findAllSpecial() {
        String hql = "FROM Service s WHERE s.special = true";
        Session session = factory.getCurrentSession();

        TypedQuery<Service> query = session.createQuery(hql, Service.class);
        List<Service> services = query.getResultList();
        return services;
    }

}
