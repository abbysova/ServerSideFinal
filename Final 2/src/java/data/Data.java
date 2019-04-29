/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.io.Serializable;
import java.math.BigDecimal;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Mariah
 */
@Entity
@Table(name = "data")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Data.findAll", query = "SELECT d FROM Data d")
    , @NamedQuery(name = "Data.findById", query = "SELECT d FROM Data d WHERE d.id = :id")
    , @NamedQuery(name = "Data.findByDiagnosis", query = "SELECT d FROM Data d WHERE d.diagnosis = :diagnosis")
    , @NamedQuery(name = "Data.findByRadiusMean", query = "SELECT d FROM Data d WHERE d.radiusMean = :radiusMean")
    , @NamedQuery(name = "Data.findByTextureMean", query = "SELECT d FROM Data d WHERE d.textureMean = :textureMean")
    , @NamedQuery(name = "Data.findByPerimeterMean", query = "SELECT d FROM Data d WHERE d.perimeterMean = :perimeterMean")})
public class Data implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "diagnosis")
    private String diagnosis;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "radius_mean")
    private BigDecimal radiusMean;
    @Column(name = "texture_mean")
    private BigDecimal textureMean;
    @Column(name = "perimeter_mean")
    private BigDecimal perimeterMean;

    public Data() {
    }

    public Data(Integer id) {
        this.id = id;
    }

    public Data(Integer id, String diagnosis) {
        this.id = id;
        this.diagnosis = diagnosis;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDiagnosis() {
        return diagnosis;
    }

    public void setDiagnosis(String diagnosis) {
        this.diagnosis = diagnosis;
    }

    public BigDecimal getRadiusMean() {
        return radiusMean;
    }

    public void setRadiusMean(BigDecimal radiusMean) {
        this.radiusMean = radiusMean;
    }

    public BigDecimal getTextureMean() {
        return textureMean;
    }

    public void setTextureMean(BigDecimal textureMean) {
        this.textureMean = textureMean;
    }

    public BigDecimal getPerimeterMean() {
        return perimeterMean;
    }

    public void setPerimeterMean(BigDecimal perimeterMean) {
        this.perimeterMean = perimeterMean;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Data)) {
            return false;
        }
        Data other = (Data) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "data.Data[ id=" + id + " ]";
    }
    
}
