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
@Table(name = "landingpageadvt")

public class Landingpageadvt extends BaseDomain {

    private static final long serialVersionUID = 1L;

    @Size(max = 255)
    @Column(name = "advt")
    private String advt;
    @Size(max = 255)
    @Column(name = "advtOne")
    private String advtOne;
    @Size(max = 255)
    @Column(name = "advtTwo")
    private String advtTwo;
    @Size(max = 255)
    @Column(name = "advtThree")
    private String advtThree;
    @Size(max = 255)
    @Column(name = "advtFour")
    private String advtFour;
    @Size(max = 255)
    @Column(name = "advtFive")
    private String advtFive;
    @Size(max = 255)
    @Column(name = "advtSix")
    private String advtSix;
    @Size(max = 255)
    @Column(name = "advtSeven")
    private String advtSeven;
    @Size(max = 255)
    @Column(name = "advtEight")
    private String advtEight;
    @Size(max = 255)
    @Column(name = "advtNine")
    private String advtNine;
    @Size(max = 255)
    @Column(name = "advtTen")
    private String advtTen;
    @Size(max = 255)
    @Column(name = "advtEleven")
    private String advtEleven;
    @Size(max = 255)
    @Column(name = "advtTwelve")
    private String advtTwelve;
    @Size(max = 255)
    @Column(name = "advtThirteen")
    private String advtThirteen;
    @Size(max = 255)
    @Column(name = "advtFourteen")
    private String advtFourteen;
    @Size(max = 255)
    @Column(name = "advtFifteen")
    private String advtFifteen;
    @Size(max = 255)
    @Column(name = "advtSixteen")
    private String advtSixteen;
    @Size(max = 255)
    @Column(name = "advtSeventeen")
    private String advtSeventeen;

    public Landingpageadvt() {
    }

    public String getAdvt() {
        return advt;
    }

    public void setAdvt(String advt) {
        this.advt = advt;
    }

    public String getAdvtOne() {
        return advtOne;
    }

    public void setAdvtOne(String advtOne) {
        this.advtOne = advtOne;
    }

    public String getAdvtTwo() {
        return advtTwo;
    }

    public void setAdvtTwo(String advtTwo) {
        this.advtTwo = advtTwo;
    }

    public String getAdvtThree() {
        return advtThree;
    }

    public void setAdvtThree(String advtThree) {
        this.advtThree = advtThree;
    }

    public String getAdvtFour() {
        return advtFour;
    }

    public void setAdvtFour(String advtFour) {
        this.advtFour = advtFour;
    }

    public String getAdvtFive() {
        return advtFive;
    }

    public void setAdvtFive(String advtFive) {
        this.advtFive = advtFive;
    }

    public String getAdvtSix() {
        return advtSix;
    }

    public void setAdvtSix(String advtSix) {
        this.advtSix = advtSix;
    }

    public String getAdvtSeven() {
        return advtSeven;
    }

    public void setAdvtSeven(String advtSeven) {
        this.advtSeven = advtSeven;
    }

    public String getAdvtEight() {
        return advtEight;
    }

    public void setAdvtEight(String advtEight) {
        this.advtEight = advtEight;
    }

    public String getAdvtNine() {
        return advtNine;
    }

    public void setAdvtNine(String advtNine) {
        this.advtNine = advtNine;
    }

    public String getAdvtTen() {
        return advtTen;
    }

    public void setAdvtTen(String advtTen) {
        this.advtTen = advtTen;
    }

    public String getAdvtEleven() {
        return advtEleven;
    }

    public void setAdvtEleven(String advtEleven) {
        this.advtEleven = advtEleven;
    }

    public String getAdvtTwelve() {
        return advtTwelve;
    }

    public void setAdvtTwelve(String advtTwelve) {
        this.advtTwelve = advtTwelve;
    }

    public String getAdvtThirteen() {
        return advtThirteen;
    }

    public void setAdvtThirteen(String advtThirteen) {
        this.advtThirteen = advtThirteen;
    }

    public String getAdvtFourteen() {
        return advtFourteen;
    }

    public void setAdvtFourteen(String advtFourteen) {
        this.advtFourteen = advtFourteen;
    }

    public String getAdvtFifteen() {
        return advtFifteen;
    }

    public void setAdvtFifteen(String advtFifteen) {
        this.advtFifteen = advtFifteen;
    }

    public String getAdvtSixteen() {
        return advtSixteen;
    }

    public void setAdvtSixteen(String advtSixteen) {
        this.advtSixteen = advtSixteen;
    }

    public String getAdvtSeventeen() {
        return advtSeventeen;
    }

    public void setAdvtSeventeen(String advtSeventeen) {
        this.advtSeventeen = advtSeventeen;
    }

}
