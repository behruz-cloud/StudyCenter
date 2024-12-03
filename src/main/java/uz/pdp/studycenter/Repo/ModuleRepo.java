package uz.pdp.studycenter.Repo;

import jakarta.persistence.EntityManager;
import uz.pdp.studycenter.entity.Module;
import uz.pdp.studycenter.entity.Course;

import java.util.List;

import static uz.pdp.studycenter.myListener.MyListener.EMF;

public class ModuleRepo {
    public static List<Module> getModulesList(Integer id) {
        try (EntityManager em = EMF.createEntityManager()) {
            Course course = em.find(Course.class, id);

            if (course != null) {
                return em.createQuery("SELECT m FROM Module m WHERE m.course = :course", Module.class)
                        .setParameter("course", course)
                        .getResultList();
            }
            return null;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
