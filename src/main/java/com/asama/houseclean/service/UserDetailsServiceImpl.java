package com.asama.houseclean.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.asama.houseclean.dao.AccountDAO;
import com.asama.houseclean.entity.Account;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private AccountDAO accountDAO;

    @Override
    public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException {
        Account account = accountDAO.findUserByIdAndStatus(id);

        if (account == null) {
            throw new UsernameNotFoundException("Tài khoản " + id + " không tồn tại trong hệ thống");
        }

        String role = account.getRole();

        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();

        GrantedAuthority grantedAuthority = new SimpleGrantedAuthority(role);
        authorities.add(grantedAuthority);

        boolean enabled = account.getActive();
        boolean accountNonExpired = true;
        boolean credentialsNonExpired = true;
        boolean accountNonLocked = true;

        UserDetails userDetails = new User(account.getId(), account.getPassword(), enabled, accountNonExpired,
                credentialsNonExpired, accountNonLocked, authorities);

        return userDetails;
    }

}
