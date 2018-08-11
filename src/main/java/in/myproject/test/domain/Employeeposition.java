/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.domain;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author pc2
 */
@Entity
@Table(name = "employeeposition")

public class Employeeposition extends BaseDomain{

    private static final long serialVersionUID = 1L;
    
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "positionName")
    private String positionName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "introducerName")
    private String introducerName;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "ownBusinnersPercent")
    private Double ownBusinnersPercent;
    @Column(name = "downlineBusinessPercent")
    private Double downlineBusinessPercent;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "user_id")
    private String userId;
    @JoinColumn(name = "state_id", referencedColumnName = "id")
    @ManyToOne
    private State state;
    @JoinColumn(name = "city_id", referencedColumnName = "id")
    @ManyToOne
    private City city;
    @Column(name = "contactNo")
    private String contactNo;

    public Employeeposition() {
    }

    

    public String getPositionName() {
        return positionName;
    }

    public void setPositionName(String positionName) {
        this.positionName = positionName;
    }

    public String getIntroducerName() {
        return introducerName;
    }

    public void setIntroducerName(String introducerName) {
        this.introducerName = introducerName;
    }

    public Double getOwnBusinnersPercent() {
        return ownBusinnersPercent;
    }

    public void setOwnBusinnersPercent(Double ownBusinnersPercent) {
        this.ownBusinnersPercent = ownBusinnersPercent;
    }

    public Double getDownlineBusinessPercent() {
        return downlineBusinessPercent;
    }

    public void setDownlineBusinessPercent(Double downlineBusinessPercent) {
        this.downlineBusinessPercent = downlineBusinessPercent;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public State getState() {
        return state;
    }

    public void setState(State state) {
        this.state = state;
    }

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }

    public String getContactNo() {
        return contactNo;
    }

    public void setContactNo(String contactNo) {
        this.contactNo = contactNo;
    }
  
    
}
