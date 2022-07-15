package company.entity;

import javax.persistence.*;
import java.util.Optional;

@Entity
public class Match {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name="first_team")
    private String firstTeam;

    @Column(name = "second_team")
    private String secondTeam;

    @Column(name = "first_score")
    private int firstScore;

    @Column(name = "second_score")
    private int secondScore;

    @ManyToOne
    private Tournament tournament;

    public Match() {
    }

    public Match(String firstTeam, String secondTeam, int firstScore, int secondScore, Tournament tournament) {
        this.firstTeam = firstTeam;
        this.secondTeam = secondTeam;
        this.firstScore = firstScore;
        this.secondScore = secondScore;
        this.tournament = tournament;
    }

    public String getFirstTeam() {
        return firstTeam;
    }

    public void setFirstTeam(String firstTeam) {
        this.firstTeam = firstTeam;
    }

    public String getSecondTeam() {
        return secondTeam;
    }

    public void setSecondTeam(String secondTeam) {
        this.secondTeam = secondTeam;
    }

    public int getFirstScore() {
        return firstScore;
    }

    public void setFirstScore(int firstScore) {
        this.firstScore = firstScore;
    }

    public int getSecondScore() {
        return secondScore;
    }

    public void setSecondScore(int secondScore) {
        this.secondScore = secondScore;
    }

    public Tournament getTournament() {
        return tournament;
    }

    public void setTournament(Tournament tournament) {
        this.tournament = tournament;
    }

    public String getScore(){
        return firstScore + ":" + secondScore;
    }
}
