/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.domain;

import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author PC6
 */
@Entity
@Table(name = "city")

public class City extends BaseDomain {

   

    

    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "city")
    private Collection<Ownerform> ownerformCollection;

    @OneToMany(mappedBy = "city")
    private Collection<Employeeposition> employeepositionCollection;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "city")
    private Collection<Product> productCollection;

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @Column(name = "status")
    private boolean status;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "city_name")
    private String cityName;
    @JoinColumn(name = "state_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private State state;

    public City() {
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public State getState() {
        return state;
    }

    public void setState(State state) {
        this.state = state;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Collection<Product> getProductCollection() {
        return productCollection;
    }

    public void setProductCollection(Collection<Product> productCollection) {
        this.productCollection = productCollection;
    }

    public Collection<Employeeposition> getEmployeepositionCollection() {
        return employeepositionCollection;
    }

    public void setEmployeepositionCollection(Collection<Employeeposition> employeepositionCollection) {
        this.employeepositionCollection = employeepositionCollection;
    }

    
    public Collection<Ownerform> getOwnerformCollection() {
        return ownerformCollection;
    }

    public void setOwnerformCollection(Collection<Ownerform> ownerformCollection) {
        this.ownerformCollection = ownerformCollection;
    }

    

    
    

}
