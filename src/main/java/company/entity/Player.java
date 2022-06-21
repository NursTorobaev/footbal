package company.entity;

import javax.persistence.*;
import java.util.List;

@Entity
public class Player {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "number")
    private int number;

    @Column(name = "birthday")
    private String birthday;

    @Column(name = "work_position")
    private String workPosition;

    @Column(name = "position")
    private String position;

    @ManyToOne
    @JoinColumn(name = "team_id")
    private Team team;

    public Player() {
    }

    public Player(String name, int number, String birthday, String workPosition, String position) {
        this.name = name;
        this.number = number;
        this.birthday = birthday;
        this.workPosition = workPosition;
        this.position = position;
    }

    public Team getTeam() {
        return team;
    }

    public void setTeam(Team team) {
        this.team = team;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getWorkPosition() {
        return workPosition;
    }

    public void setWorkPosition(String workPosition) {
        this.workPosition = workPosition;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }
}
