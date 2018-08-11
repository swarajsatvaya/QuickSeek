/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dto;

import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author OdexLaptop
 */
public class PictureBean {
 
    private MultipartFile uploadImage;
    
    private MultipartFile uploadlogo;
    
    private String mappointing;
    
    private String aboutus;
    
    private String about;
    
    private String service;
    
    private String categories;
    
    private String description;
    
    private long ownerId;
    
    private String username;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public long getOwnerId() {
        return ownerId;
    }

    public void setOwnerId(long ownerId) {
        this.ownerId = ownerId;
    }

    public MultipartFile getUploadImage() {
        return uploadImage;
    }

    public void setUploadImage(MultipartFile uploadImage) {
        this.uploadImage = uploadImage;
    }

    public MultipartFile getUploadlogo() {
        return uploadlogo;
    }

    public void setUploadlogo(MultipartFile uploadlogo) {
        this.uploadlogo = uploadlogo;
    }

    public String getMappointing() {
        return mappointing;
    }

    public void setMappointing(String mappointing) {
        this.mappointing = mappointing;
    }

    public String getAboutus() {
        return aboutus;
    }

    public void setAboutus(String aboutus) {
        this.aboutus = aboutus;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public String getCategories() {
        return categories;
    }

    public void setCategories(String categories) {
        this.categories = categories;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    
    
    
}
