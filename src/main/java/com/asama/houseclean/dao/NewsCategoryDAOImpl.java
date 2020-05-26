package com.asama.houseclean.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.asama.houseclean.entity.NewsCategory;

@Repository
@Transactional
public class NewsCategoryDAOImpl implements NewsCategoryDAO {

    @Autowired
    SessionFactory factory;

    @Override
    public NewsCategory findById(Integer id) {
        Session session = factory.getCurrentSession();
        return session.find(NewsCategory.class, id);
    }

    @Override
    public void save(NewsCategory news) {
        Session session = factory.getCurrentSession();
        session.save(session);
    }

    @Override
    public void update(NewsCategory news) {
        Session session = factory.getCurrentSession();
        session.update(news);
    }

    @Override
    public void delete(Integer id) {
        Session session = factory.getCurrentSession();
        NewsCategory category = session.find(NewsCategory.class, id);
        session.delete(category);
    }

    @Override
    public List<NewsCategory> findAll() {
        String hql = "FROM NewsCategory";
        Session session = factory.getCurrentSession();

        TypedQuery<NewsCategory> query = session.createQuery(hql, NewsCategory.class);
        List<NewsCategory> newscat = query.getResultList();
        return newscat;
    }

}
