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
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author pc2
 */
@Entity
@Table(name = "category")

public class Category extends BaseDomain {

    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "category")
    private Collection<Ownerkeyword> ownerkeywordCollection;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "category")
    private Collection<Keyword> keywordCollection;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "category")
    private Collection<Product> productCollection;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "category")
    private Collection<Brand> brandCollection;

    private static final long serialVersionUID = 1L;

    @Basic(optional = false)
    @Column(name = "name")
    private String name;
    @Basic(optional = false)
    @Column(name = "image")
    private String image;
    @Basic(optional = false)
    @Column(name = "icon")
    private String icon;
    @Basic(optional = false)
    @Column(name = "color")
    private String color;
    @Basic(optional = false)
    @Column(name = "status")
    private boolean status;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "category")
    private Collection<Subcategory> subcategoryCollection;

    public Category() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Collection<Subcategory> getSubcategoryCollection() {
        return subcategoryCollection;
    }

    public void setSubcategoryCollection(Collection<Subcategory> subcategoryCollection) {
        this.subcategoryCollection = subcategoryCollection;
    }

    public Collection<Brand> getBrandCollection() {
        return brandCollection;
    }

    public void setBrandCollection(Collection<Brand> brandCollection) {
        this.brandCollection = brandCollection;
    }

    public Collection<Product> getProductCollection() {
        return productCollection;
    }

    public void setProductCollection(Collection<Product> productCollection) {
        this.productCollection = productCollection;
    }

    public Collection<Keyword> getKeywordCollection() {
        return keywordCollection;
    }

    public void setKeywordCollection(Collection<Keyword> keywordCollection) {
        this.keywordCollection = keywordCollection;
    }

   

    public Collection<Ownerkeyword> getOwnerkeywordCollection() {
        return ownerkeywordCollection;
    }

    public void setOwnerkeywordCollection(Collection<Ownerkeyword> ownerkeywordCollection) {
        this.ownerkeywordCollection = ownerkeywordCollection;
    }

   
}
