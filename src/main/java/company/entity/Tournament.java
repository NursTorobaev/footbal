package company.entity;

import javax.persistence.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

@Entity
@Table(name = "tournament")
public class Tournament {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "name")
    private String name;

    @Column(name = "date_from")
    private Date dateFrom;

    @Column(name = "date_to")
    private Date dateTo;


    public Tournament() {
    }
    public String convertDateToString(Date date) {
        DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
        return dateFormat.format(date);
    }

    public Tournament(String name, Date dateFrom, Date dateTo) {
        this.name = name;
        this.dateFrom = dateFrom;
        this.dateTo = dateTo;
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

    public String getDateFrom() {
        return convertDateToString(dateFrom);
    }

    public void setDateFrom(Date dateFrom) {
        this.dateFrom = dateFrom;
    }

    public String getDateTo() {
        return convertDateToString(dateTo);
    }

    public void setDateTo(Date dateTo) {
        this.dateTo = dateTo;
    }
}
