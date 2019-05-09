package data;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class DBUtility {
    
    public static final EntityManagerFactory emf =
            Persistence.createEntityManagerFactory("FinalPU");

    public static EntityManagerFactory getEmFactory() {
        return emf;
    }
}
