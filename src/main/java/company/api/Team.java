package company.api;

import javax.persistence.*;

@Entity
@Table(name="team")
public class Team {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String name;

    private short games;
    private short missed;
    private String score;

    public short getGames() {
        return games;
    }

    public void setGames(short games) {
        this.games = games;
    }

    public short getMissed() {
        return missed;
    }

    public void setMissed(short missed) {
        this.missed = missed;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }
}
