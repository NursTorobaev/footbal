package company.repos;

import company.api.Team;
import org.springframework.data.repository.CrudRepository;

public interface TeamRepo extends CrudRepository<Team, Long> {
}
