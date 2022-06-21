package company.entity;

import javax.persistence.*;

@Entity
public class TeamEvent {
    @EmbeddedId
    TeamEventKey id;

    @ManyToOne
    @MapsId("teamId")
    @JoinColumn(name = "team_id")
    Team team;

    @ManyToOne
    @MapsId("eventId")
    @JoinColumn(name = "event_id")
    Tournament tournament;

    String winner;

    public TeamEventKey getId() {
        return id;
    }

    public void setId(TeamEventKey id) {
        this.id = id;
    }

    public Team getTeam() {
        return team;
    }

    public void setTeam(Team team) {
        this.team = team;
    }

    public Tournament getTournament() {
        return tournament;
    }

    public void setTournament(Tournament tournament) {
        this.tournament = tournament;
    }

    public String getWinner() {
        return winner;
    }

    public void setWinner(String winner) {
        this.winner = winner;
    }
}
