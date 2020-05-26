package com.asama.houseclean.dao;

import java.util.List;

import com.asama.houseclean.entity.Account;

public interface AccountDAO {

    Account findUserById(String id);
    
    Account findUserByIdAndStatus(String id);
    
    void saveUser(Account account);
    
    void updateUser(Account account);
    
    void deleteUser(String userId);
    
    void setUserInActive(String userId);
    
    List<Account> findAll();
}
