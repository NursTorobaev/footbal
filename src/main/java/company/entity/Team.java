package company.entity;

import javax.persistence.*;

@Entity
@Table(name = "team")
public class Team {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String name;

    private String departmentName;
    @Column(name="goals")
    private short goals;

    @Column(name = "wins")
    private short wins;
    @Column(name="loses")
    private short loses;
    @Column(name="draws")
    private short draws;

    private short games;
    private short missed;

    public Team() {
    }

    public Team(String name, String departmentName, short games, short missed) {
        this.name = name;
        this.departmentName = departmentName;
        this.games = games;
        this.missed = missed;
    }

    public short getGoals() {
        return goals;
    }

    public void setGoals(short goals) {
        this.goals = goals;
    }

    public short getWins() {
        return wins;
    }

    public void setWins(short wins) {
        this.wins = wins;
    }

    public short getLoses() {
        return loses;
    }

    public void setLoses(short loses) {
        this.loses = loses;
    }

    public short getDraws() {
        return draws;
    }

    public void setDraws(short draws) {
        this.draws = draws;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

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
}
