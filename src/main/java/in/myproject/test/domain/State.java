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
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author PC6
 */
@Entity
@Table(name = "state")

public class State extends BaseDomain {

    

    


    @OneToMany(mappedBy = "state")
    private Collection<Employeeposition> employeepositionCollection;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "state")
    private Collection<Businessdetails> businessdetailsCollection;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "state")
    private Collection<Ownerform> ownerformCollection;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "state")
    private Collection<District> districtCollection;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "state")
    private Collection<Product> productCollection;

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @Column(name = "status")
    private boolean status;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "state_name")
    private String stateName;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "state")
    private Collection<City> cityCollection;

    public State() {
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getStateName() {
        return stateName;
    }

    public void setStateName(String stateName) {
        this.stateName = stateName;
    }

    public Collection<City> getCityCollection() {
        return cityCollection;
    }

    public void setCityCollection(Collection<City> cityCollection) {
        this.cityCollection = cityCollection;
    }

    public Collection<Product> getProductCollection() {
        return productCollection;
    }

    public void setProductCollection(Collection<Product> productCollection) {
        this.productCollection = productCollection;
    }

    public Collection<District> getDistrictCollection() {
        return districtCollection;
    }

    public void setDistrictCollection(Collection<District> districtCollection) {
        this.districtCollection = districtCollection;
    }

    public Collection<Ownerform> getOwnerformCollection() {
        return ownerformCollection;
    }

    public void setOwnerformCollection(Collection<Ownerform> ownerformCollection) {
        this.ownerformCollection = ownerformCollection;
    }

    public Collection<Businessdetails> getBusinessdetailsCollection() {
        return businessdetailsCollection;
    }

    public void setBusinessdetailsCollection(Collection<Businessdetails> businessdetailsCollection) {
        this.businessdetailsCollection = businessdetailsCollection;
    }

    public Collection<Employeeposition> getEmployeepositionCollection() {
        return employeepositionCollection;
    }

    public void setEmployeepositionCollection(Collection<Employeeposition> employeepositionCollection) {
        this.employeepositionCollection = employeepositionCollection;
    }

    

    

    
}
