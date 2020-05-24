package com.asama.houseclean.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.asama.houseclean.dao.AccountDAO;
import com.asama.houseclean.entity.Account;

@Service
public class AccountService {

    @Autowired
    AccountDAO accountDAO;
    
    @Autowired
    BCryptPasswordEncoder encoder;
    
    public Account findById(String userId) {
        return accountDAO.findUserById(userId);
    }
    
    public boolean checkExistUserId(String userId) {
        Account user = accountDAO.findUserById(userId);
        if (user != null) {
            return true;
        }
        return false;
    }
    
    public void saveUser(Account account) {
        String pass = encoder.encode(account.getPassword());
        account.setPassword(pass);
        accountDAO.saveUser(account);
    }
    
    public List<Account> getAllUser() {
        return accountDAO.findAll();
    }
    
}
