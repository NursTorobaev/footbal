package com.company.spring.security.repos;

import com.company.spring.security.api.Consumer;
import org.springframework.data.repository.CrudRepository;

public interface ConsumerRepo extends CrudRepository<Consumer, Long> {
    Consumer findConsumerByUsername(String username);
}
