package com.asama.houseclean.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.asama.houseclean.entity.News;

@Repository
@Transactional
public class NewsDAOImpl implements NewsDAO {

    @Autowired
    SessionFactory factory;
    
    @Override
    public News findById(Long id) {
        Session session = factory.getCurrentSession();
        return session.find(News.class, id);
    }

    @Override
    public void save(News news) {
        Session session = factory.getCurrentSession();
        session.save(news);
    }

    @Override
    public void update(News news) {
        Session session = factory.getCurrentSession();
        session.update(news);
    }

    @Override
    public void delete(Long id) {
        Session session = factory.getCurrentSession();
        News news = session.find(News.class, id);
        session.delete(news);
    }

    @Override
    public List<News> findAll() {
        String hql = "FROM News";
        Session session = factory.getCurrentSession();

        TypedQuery<News> query = session.createQuery(hql, News.class);
        List<News> news = query.getResultList();
        return news;
    }

}
