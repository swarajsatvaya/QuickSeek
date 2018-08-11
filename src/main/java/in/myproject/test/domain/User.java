/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.domain;

import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author pc2
 */
@Entity
@Table(name = "user")

public class User extends BaseDomain {

    private static final long serialVersionUID = 1L;

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "name")
    private String name;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "emailId")
    private String emailId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "password")
    private String password;
    @Size(max = 255)
    @Column(name = "image")
    private String image;
    @Column(name = "blockDate")
    @Temporal(TemporalType.DATE)
    private Date blockDate;
    @Basic(optional = false)
    @NotNull
    @Column(name = "lastLogin")
    @Temporal(TemporalType.TIMESTAMP)
    private Date lastLogin;
    @Basic(optional = false)
    @NotNull
    @Column(name = "status")
    private boolean status;
    @Size(max = 255)
    @Column(name = "otp")
    private String otp;
    @Column(name = "phone")
    private String phone_no;
    @Basic(optional = false)
    @NotNull
    @Column(name = "otpStatus")
    private boolean otpStatus;
    @Basic(optional = false)
    @Column(name = "user_id")
    private String userId;
    @Basic(optional = false)
    @Column(name = "package_id")
    private int packageId;
    @Basic(optional = false)
    @Column(name = "package_start_date")
    @Temporal(TemporalType.DATE)
    private Date packageStartDate;
    @Column(name = "package_last_date")
    @Temporal(TemporalType.DATE)
    private Date packageLastDate;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public User() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone_no() {
        return phone_no;
    }

    public void setPhone_no(String phone_no) {
        this.phone_no = phone_no;
    }

    
    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Date getBlockDate() {
        return blockDate;
    }

    public void setBlockDate(Date blockDate) {
        this.blockDate = blockDate;
    }

    public Date getLastLogin() {
        return lastLogin;
    }

    public void setLastLogin(Date lastLogin) {
        this.lastLogin = lastLogin;
    }

    public boolean getStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getOtp() {
        return otp;
    }

    public void setOtp(String otp) {
        this.otp = otp;
    }

    public boolean getOtpStatus() {
        return otpStatus;
    }

    public void setOtpStatus(boolean otpStatus) {
        this.otpStatus = otpStatus;
    }

    public int getPackageId() {
        return packageId;
    }

    public void setPackageId(int packageId) {
        this.packageId = packageId;
    }

    public Date getPackageStartDate() {
        return packageStartDate;
    }

    public void setPackageStartDate(Date packageStartDate) {
        this.packageStartDate = packageStartDate;
    }

    public Date getPackageLastDate() {
        return packageLastDate;
    }

    public void setPackageLastDate(Date packageLastDate) {
        this.packageLastDate = packageLastDate;
    }
    

}
