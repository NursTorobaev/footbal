package company.api;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="tournament")
public class Tournament {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String groups;
    private String score;

    private Date date;

    private short tour;

    public Tournament() {
    }

    public short getTour() {
        return tour;
    }

    public void setTour(short tour) {
        this.tour = tour;
    }

    public Date getDate() {
        return date;
    }

    public String getGroups() {
        return groups;
    }

    public void setGroups(String groups) {
        this.groups = groups;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }


    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

}
