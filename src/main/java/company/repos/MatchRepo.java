package company.repos;

import company.entity.Match;
import org.springframework.data.repository.CrudRepository;

public interface MatchRepo extends CrudRepository<Match, Long> {
    String findMatchById(Long id);
}
