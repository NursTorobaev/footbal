package company.repos;

import company.api.Tournament;
import org.springframework.data.repository.CrudRepository;

public interface TournamentRepo extends CrudRepository<Tournament, Long> {
}
