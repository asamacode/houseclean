package com.asama.houseclean.dao;

import com.asama.houseclean.entity.Account;

public interface AccountDAO {

    Account findUserById(String id);
}
