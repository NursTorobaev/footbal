package company.repos;

import company.entity.Tournament;
import org.springframework.data.repository.CrudRepository;

public interface TournamentRepo extends CrudRepository<Tournament, Long> {
}
