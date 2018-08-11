/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.domain;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author OdexLaptop
 */
@Entity
@Table(name = "upgrade")
public class Upgrade extends BaseDomain{

    private static final long serialVersionUID = 1L;
    
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "type")
    private String type;
    @Basic(optional = false)
    @NotNull
    @Column(name = "rupes")
    private double rupes;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "validity")
    private String validity;
    @Basic(optional = false)
    @NotNull
    @Column(name = "no_of_keyword")
    private int noOfKeyword;
    @Basic(optional = false)
    @NotNull
    @Column(name = "percentage")
    private int percentage;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "priority")
    private String priority;
    @Basic(optional = false)
    @NotNull
    @Column(name = "sms")
    private boolean smsMail;
    @Basic(optional = false)
    @NotNull
    @Column(name = "support")
    private boolean support;
    @Basic(optional = false)
    @NotNull
    @Column(name = "account_manage")
    private boolean accountManage;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "position")
    private String position;
    @Basic(optional = false)
    @NotNull
    @Column(name = "picture")
    private int picture;

    public Upgrade() {
    }

    
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public double getRupes() {
        return rupes;
    }

    public void setRupes(double rupes) {
        this.rupes = rupes;
    }

    public String getValidity() {
        return validity;
    }

    public void setValidity(String validity) {
        this.validity = validity;
    }

    public int getNoOfKeyword() {
        return noOfKeyword;
    }

    public void setNoOfKeyword(int noOfKeyword) {
        this.noOfKeyword = noOfKeyword;
    }

    public int getPercentage() {
        return percentage;
    }

    public void setPercentage(int percentage) {
        this.percentage = percentage;
    }

    public String getPriority() {
        return priority;
    }

    public void setPriority(String priority) {
        this.priority = priority;
    }

    public boolean getSmsMail() {
        return smsMail;
    }

    public void setSmsMail(boolean smsMail) {
        this.smsMail = smsMail;
    }

    public boolean getSupport() {
        return support;
    }

    public void setSupport(boolean support) {
        this.support = support;
    }

    public boolean getAccountManage() {
        return accountManage;
    }

    public void setAccountManage(boolean accountManage) {
        this.accountManage = accountManage;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public int getPicture() {
        return picture;
    }

    public void setPicture(int picture) {
        this.picture = picture;
    }


}
