package company.repos;

import company.entity.Tournament;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface TournamentRepo extends CrudRepository<Tournament, Long> {
}
