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
@Table(name = "ownerpicture")

public class Ownerpicture extends BaseDomain{

    private static final long serialVersionUID = 1L;
    
    @Size(max = 255)
    @Column(name = "bannerImage")
    private String bannerImage;
    @Size(max = 255)
    @Column(name = "logoImage")
    private String logoImage;
    @Size(max = 255)
    @Column(name = "pictureImage")
    private String pictureImage;
    @Size(max = 255)
    @Column(name = "videoImage")
    private String videoImage;
    @Size(max = 255)
    @Column(name = "mapPointing")
    private String mapPointing;
    @Size(max = 255)
    @Column(name = "uploadZip")
    private String uploadZip;
    @Size(max = 255)
    @Column(name = "aboutUs")
    private String aboutUs;
    @Size(max = 255)
    @Column(name = "service")
    private String service;
    @Size(max = 255)
    @Column(name = "otherCategories")
    private String otherCategories;
    @Size(max = 255)
    @Column(name = "productDesc")
    private String productDesc;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "userId")
    private String userId;
    @JoinColumn(name = "owner_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Ownerform ownerform;

    public Ownerpicture() {
    }

    

    public String getBannerImage() {
        return bannerImage;
    }

    public void setBannerImage(String bannerImage) {
        this.bannerImage = bannerImage;
    }

    public String getLogoImage() {
        return logoImage;
    }

    public void setLogoImage(String logoImage) {
        this.logoImage = logoImage;
    }

    public String getPictureImage() {
        return pictureImage;
    }

    public void setPictureImage(String pictureImage) {
        this.pictureImage = pictureImage;
    }

    public String getVideoImage() {
        return videoImage;
    }

    public void setVideoImage(String videoImage) {
        this.videoImage = videoImage;
    }

    public String getMapPointing() {
        return mapPointing;
    }

    public void setMapPointing(String mapPointing) {
        this.mapPointing = mapPointing;
    }

    public String getUploadZip() {
        return uploadZip;
    }

    public void setUploadZip(String uploadZip) {
        this.uploadZip = uploadZip;
    }

    public String getAboutUs() {
        return aboutUs;
    }

    public void setAboutUs(String aboutUs) {
        this.aboutUs = aboutUs;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public String getOtherCategories() {
        return otherCategories;
    }

    public void setOtherCategories(String otherCategories) {
        this.otherCategories = otherCategories;
    }

    public String getProductDesc() {
        return productDesc;
    }

    public void setProductDesc(String productDesc) {
        this.productDesc = productDesc;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Ownerform getOwnerform() {
        return ownerform;
    }

    public void setOwnerform(Ownerform ownerform) {
        this.ownerform = ownerform;
    }

    
    
}
