package data;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/*
*Creates Entity Manager Factory for our Database works with Persitence
*@version 1.0
*@update May 9, 2019
*/
public class DBUtility { //TO:DO not sure if we need this class why using a workbench (Let me know what you think)
    
    public static final EntityManagerFactory emf =
            Persistence.createEntityManagerFactory("FinalPU");

    public static EntityManagerFactory getEmFactory() {
        return emf;
    }
}
