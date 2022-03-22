package com.company.spring.security.service;

import com.company.spring.security.repos.EmployeesRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class EmployeesService implements UserDetailsService {

    @Autowired
    private EmployeesRepo employeesRepo;

    @Override
    public UserDetails loadUserByUsername(String fullName) throws UsernameNotFoundException {
        return employeesRepo.findEmployeeByFullName(fullName);
    }
}
