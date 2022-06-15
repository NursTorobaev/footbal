package company.swagger;

import company.entity.Consumer;
import company.repos.ConsumerRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;

@RestController
@PreAuthorize("hasAuthority('ADMIN')")
public class ConsumerSwagger {
    @Autowired
    private ConsumerRepo consumerRepo;

    @RequestMapping(method = RequestMethod.GET, path = "/swagger/consumer")
    public ArrayList<Consumer> getConsumers(){
        return (ArrayList<Consumer>) consumerRepo.findAll();
    }
}
