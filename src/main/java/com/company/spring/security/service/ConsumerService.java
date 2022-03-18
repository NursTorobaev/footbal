package com.company.spring.security.service;

import com.company.spring.security.repos.ConsumerRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;


@Service
public class ConsumerService implements UserDetailsService {

    @Autowired
    private ConsumerRepo consumerRepo;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        return consumerRepo.findConsumerByUsername(username);
    }
}
