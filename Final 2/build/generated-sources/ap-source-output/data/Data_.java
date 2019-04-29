package data;

import java.math.BigDecimal;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2019-04-26T09:06:17")
@StaticMetamodel(Data.class)
public class Data_ { 

    public static volatile SingularAttribute<Data, BigDecimal> radiusMean;
    public static volatile SingularAttribute<Data, BigDecimal> perimeterMean;
    public static volatile SingularAttribute<Data, String> diagnosis;
    public static volatile SingularAttribute<Data, Integer> id;
    public static volatile SingularAttribute<Data, BigDecimal> textureMean;

}