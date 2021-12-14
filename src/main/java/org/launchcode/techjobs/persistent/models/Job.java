package org.launchcode.techjobs.persistent.models;

import javax.persistence.*;
import java.util.List;

@Entity
public class Job extends AbstractEntity{
    @ManyToOne
    private Employer employer;

    @ManyToMany
    private List<Skill> skills;

    public Job() {
    }

    public Job(Employer Employer, List<Skill> Skills) {
        super();
        this.employer = Employer;
        this.skills = Skills;
    }

    // Getters and setters.



    public Employer getEmployer() {
        return employer;
    }

    public void setEmployer(Employer employer) {
        this.employer = employer;
    }

    public List<Skill> getSkills() {
        return skills;
    }

    public void setSkills(List<Skill> skills) {
        this.skills = skills;
    }
}