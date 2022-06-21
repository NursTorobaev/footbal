package company.repos;

import company.entity.TeamEvent;
import org.springframework.data.repository.CrudRepository;

public interface TeamEventRepo extends CrudRepository<TeamEvent, Long> {
    TeamEvent findTeamEventById(Long id);
}
