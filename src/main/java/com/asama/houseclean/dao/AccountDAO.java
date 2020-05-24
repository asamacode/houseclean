package com.asama.houseclean.dao;

import java.util.List;

import com.asama.houseclean.entity.Account;

public interface AccountDAO {

    Account findUserById(String id);
    
    void saveUser(Account account);
    
    void updateUser(Account account);
    
    void deleteUser(String userId);
    
    List<Account> findAll();
}
