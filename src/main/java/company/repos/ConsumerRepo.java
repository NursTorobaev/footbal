package company.repos;

import company.api.Consumer;
import org.springframework.data.repository.CrudRepository;

public interface ConsumerRepo extends CrudRepository<Consumer, Long> {
    Consumer findConsumerByUsername(String name);
}
