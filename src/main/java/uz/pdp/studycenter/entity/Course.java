package uz.pdp.studycenter.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
public class Course {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;
    String name;
}
