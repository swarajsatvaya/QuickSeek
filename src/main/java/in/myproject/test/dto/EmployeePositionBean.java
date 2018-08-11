/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dto;

import in.myproject.test.domain.City;
import in.myproject.test.domain.State;

/**
 *
 * @author pc2
 */
public class EmployeePositionBean {

    private String positionName;
    private long id;
    private String introducerName;
    private Double ownlineBusiness;
    private Double downlineBusiness;
    private City city;
    private long cityId;
    private State state;
    private long stateId;
    private String mobileNo;

    public String getMobileNo() {
        return mobileNo;
    }

    public void setMobileNo(String mobileNo) {
        this.mobileNo = mobileNo;
    }
    

//    getters and setters
    public String getPositionName() {
        return positionName;
    }

    public void setPositionName(String positionName) {
        this.positionName = positionName;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getIntroducerName() {
        return introducerName;
    }

    public void setIntroducerName(String introducerName) {
        this.introducerName = introducerName;
    }

    public Double getOwnlineBusiness() {
        return ownlineBusiness;
    }

    public void setOwnlineBusiness(Double ownlineBusiness) {
        this.ownlineBusiness = ownlineBusiness;
    }

    public Double getDownlineBusiness() {
        return downlineBusiness;
    }

    public void setDownlineBusiness(Double downlineBusiness) {
        this.downlineBusiness = downlineBusiness;
    }

    public long getCityId() {
        return cityId;
    }

    public void setCityId(long cityId) {
        this.cityId = cityId;
    }

    public long getStateId() {
        return stateId;
    }

    public void setStateId(long stateId) {
        this.stateId = stateId;
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

}
