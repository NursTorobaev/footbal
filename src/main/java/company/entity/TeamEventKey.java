package company.entity;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class TeamEventKey implements Serializable {
    @Column(name = "team_id")
    long teamId;
    @Column(name = "event_id")
    long eventId;
}
