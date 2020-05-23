package com.asama.houseclean.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.asama.houseclean.entity.Account;

@Repository
@Transactional
public class AccountDAOImpl implements AccountDAO {

    @Autowired
    private SessionFactory factory;
    
    @Override
    public Account findUserById(String id) {
        Session session = factory.getCurrentSession();
        return session.find(Account.class, id);
    }

}
