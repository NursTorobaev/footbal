package company.repos;

import company.entity.Team;
import org.springframework.data.repository.CrudRepository;

public interface TeamRepo extends CrudRepository<Team, Long> {
}
