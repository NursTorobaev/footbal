package company.repos;

import company.api.Player;
import org.springframework.data.repository.CrudRepository;
import org.springframework.security.core.userdetails.UserDetails;

public interface PlayerRepo extends CrudRepository<Player, Long> {
}
