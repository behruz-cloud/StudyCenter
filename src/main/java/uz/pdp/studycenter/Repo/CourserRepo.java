package uz.pdp.studycenter.Repo;

import jakarta.persistence.EntityManager;
import uz.pdp.studycenter.entity.Course;

import java.util.List;

import static uz.pdp.studycenter.myListener.MyListener.EMF;

public class CourserRepo {
    public static List<Course> getCoursesList() {
        try (
                EntityManager em = EMF.createEntityManager();

        ) {
            return em.createQuery("select c from Course c", Course.class).getResultList();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }
}
