package pl.coderslab.model;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.Objects;

@Entity
@Table(name = "day_name")
public class DayName {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Size(max=45)
    private String name;
    @Column(name = "order_no")
    private int order;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getOrder() {
        return order;
    }

    public void setOrder(int order) {
        this.order = order;
    }

    @Override
    public String toString() {
        return "DayName{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", order=" + order +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof DayName)) return false;
        DayName dayName = (DayName) o;
        return id == dayName.id;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
