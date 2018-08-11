/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.Size;

/**
 *
 * @author pc2
 */
@Entity
@Table(name = "backofficeemployee")

public class Backofficeemployee extends BaseDomain{

    private static final long serialVersionUID = 1L;
    
    @Size(max = 255)
    @Column(name = "designation")
    private String designation;
    @Size(max = 255)
    @Column(name = "userName")
    private String userName;
    @Size(max = 255)
    @Column(name = "password")
    private String password;
    @Column(name = "managePages")
    private Boolean managePages;
    @Column(name = "createUser")
    private Boolean createUser;
    @Column(name = "manageEmployee")
    private Boolean manageEmployee;
    @Column(name = "manageCustomer")
    private Boolean manageCustomer;
    @Column(name = "viewerList")
    private Boolean viewerList;
    @Column(name = "locationList")
    private Boolean locationList;
    @Column(name = "manageLocation")
    private Boolean manageLocation;
    @Column(name = "manageCategories")
    private Boolean manageCategories;
    @Column(name = "keywords")
    private Boolean keywords;
    @Column(name = "adManagement")
    private Boolean adManagement;
    @Column(name = "customerSupport")
    private Boolean customerSupport;
    @Column(name = "manageReports")
    private Boolean manageReports;
    @Column(name = "adPackage")
    private Boolean adPackage;
    @Column(name = "manageAc")
    private Boolean manageAc;
    @Column(name = "feedback")
    private Boolean feedback;

    public Backofficeemployee() {
    }

    

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Boolean getManagePages() {
        return managePages;
    }

    public void setManagePages(Boolean managePages) {
        this.managePages = managePages;
    }

    public Boolean getCreateUser() {
        return createUser;
    }

    public void setCreateUser(Boolean createUser) {
        this.createUser = createUser;
    }

    public Boolean getManageEmployee() {
        return manageEmployee;
    }

    public void setManageEmployee(Boolean manageEmployee) {
        this.manageEmployee = manageEmployee;
    }

    public Boolean getManageCustomer() {
        return manageCustomer;
    }

    public void setManageCustomer(Boolean manageCustomer) {
        this.manageCustomer = manageCustomer;
    }

    public Boolean getViewerList() {
        return viewerList;
    }

    public void setViewerList(Boolean viewerList) {
        this.viewerList = viewerList;
    }

    public Boolean getLocationList() {
        return locationList;
    }

    public void setLocationList(Boolean locationList) {
        this.locationList = locationList;
    }

    public Boolean getManageLocation() {
        return manageLocation;
    }

    public void setManageLocation(Boolean manageLocation) {
        this.manageLocation = manageLocation;
    }

    public Boolean getManageCategories() {
        return manageCategories;
    }

    public void setManageCategories(Boolean manageCategories) {
        this.manageCategories = manageCategories;
    }

    public Boolean getKeywords() {
        return keywords;
    }

    public void setKeywords(Boolean keywords) {
        this.keywords = keywords;
    }

    public Boolean getAdManagement() {
        return adManagement;
    }

    public void setAdManagement(Boolean adManagement) {
        this.adManagement = adManagement;
    }

    public Boolean getCustomerSupport() {
        return customerSupport;
    }

    public void setCustomerSupport(Boolean customerSupport) {
        this.customerSupport = customerSupport;
    }

    public Boolean getManageReports() {
        return manageReports;
    }

    public void setManageReports(Boolean manageReports) {
        this.manageReports = manageReports;
    }

    public Boolean getAdPackage() {
        return adPackage;
    }

    public void setAdPackage(Boolean adPackage) {
        this.adPackage = adPackage;
    }

    public Boolean getManageAc() {
        return manageAc;
    }

    public void setManageAc(Boolean manageAc) {
        this.manageAc = manageAc;
    }

    public Boolean getFeedback() {
        return feedback;
    }

    public void setFeedback(Boolean feedback) {
        this.feedback = feedback;
    }

    
    
}
