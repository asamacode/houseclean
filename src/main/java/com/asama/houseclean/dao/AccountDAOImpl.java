package com.asama.houseclean.dao;

import java.util.List;

import javax.persistence.TypedQuery;
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
    public Account findUserByIdAndStatus(String id) {
        String hql = "FROM Account c WHERE c.id = :userId AND c.active = true";
        Session session = factory.getCurrentSession();
        TypedQuery<Account> query = session.createQuery(hql, Account.class);
        query.setParameter("userId", id);
        Account account = query.getSingleResult();
        return account;
    }

    @Override
    public void saveUser(Account account) {
        Session session = factory.getCurrentSession();
        session.save(account);
    }

    @Override
    public void updateUser(Account account) {
        Session session = factory.getCurrentSession();
        session.update(account);
    }

    @Override
    public void deleteUser(String userId) {
        Session session = factory.getCurrentSession();
        Account account = findUserById(userId);
        session.delete(account);
    }

    @Override
    public List<Account> findAll() {
        String hql = "FROM Account";
        Session session = factory.getCurrentSession();

        TypedQuery<Account> query = session.createQuery(hql, Account.class);
        List<Account> accounts = query.getResultList();
        return accounts;
    }

    @Override
    public void setUserInActive(String userId) {
        Session session = factory.getCurrentSession();
        Account account = session.find(Account.class, userId);
        account.setActive(false);
        session.update(account);
    }

    @Override
    public Account findUserById(String id) {
        Session session = factory.getCurrentSession();
        Account account = session.find(Account.class, id);
        return account;
    }

}
