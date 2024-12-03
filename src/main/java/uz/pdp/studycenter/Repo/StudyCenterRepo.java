package uz.pdp.studycenter.Repo;
import jakarta.persistence.EntityManager;
import uz.pdp.studycenter.entity.Report;

import java.util.List;

import static uz.pdp.studycenter.myListener.MyListener.EMF;

public class StudyCenterRepo {

    // Method to get the number of students and total payments per course
    public static List<Report> getCourseReport() {
        try (EntityManager em = EMF.createEntityManager()) {
            String query = "select c.name,count(s.id),sum(s.amount)\n" +
                    "from course c\n" +
                    "         join module m on m.course_id = c.id\n" +
                    "         join groups g on g.module_id = m.id\n" +
                    "         join student s on s.groups_id = g.id\n" +
                    "group by c.name\n" +
                    ";";
            return em.createNativeQuery(query, Report.class).getResultList();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
