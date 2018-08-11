/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dto;

import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author pc2
 */
public class MiddleAdvtBean {
    
    private MultipartFile image;
    private MultipartFile imageOne;
    private MultipartFile imageTwo;
    private MultipartFile imageThree;
    private MultipartFile imageFour;
    private MultipartFile imageFive;
    
//    getters and setters

    public MultipartFile getImage() {
        return image;
    }

    public void setImage(MultipartFile image) {
        this.image = image;
    }

    public MultipartFile getImageOne() {
        return imageOne;
    }

    public void setImageOne(MultipartFile imageOne) {
        this.imageOne = imageOne;
    }

    public MultipartFile getImageTwo() {
        return imageTwo;
    }

    public void setImageTwo(MultipartFile imageTwo) {
        this.imageTwo = imageTwo;
    }

    public MultipartFile getImageThree() {
        return imageThree;
    }

    public void setImageThree(MultipartFile imageThree) {
        this.imageThree = imageThree;
    }

    public MultipartFile getImageFour() {
        return imageFour;
    }

    public void setImageFour(MultipartFile imageFour) {
        this.imageFour = imageFour;
    }

    public MultipartFile getImageFive() {
        return imageFive;
    }

    public void setImageFive(MultipartFile imageFive) {
        this.imageFive = imageFive;
    }
    
    
    
    
}
