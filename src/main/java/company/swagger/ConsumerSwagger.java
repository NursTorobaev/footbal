package company.swagger;

import company.entity.Consumer;
import company.repos.ConsumerRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Optional;

@RestController
public class ConsumerSwagger {
    @Autowired
    private ConsumerRepo consumerRepo;

    @PreAuthorize("hasAuthority('ADMIN')")
    @RequestMapping(method = RequestMethod.GET, path = "/swagger-ui/users")
    public ArrayList<Consumer> getConsumers() {
        return (ArrayList<Consumer>) consumerRepo.findAll();
    }

    @RequestMapping(method = RequestMethod.GET, path = "/swagger-ui/user/{id}")
    public Optional<Consumer> one(@PathVariable Long id) {
        return consumerRepo.findById(id);
    }
}
