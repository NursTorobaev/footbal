package company.repos;

import company.entity.Player;
import org.springframework.data.repository.CrudRepository;

public interface PlayerRepo extends CrudRepository<Player, Long> {
    Player findPlayerByName(String name);
}
