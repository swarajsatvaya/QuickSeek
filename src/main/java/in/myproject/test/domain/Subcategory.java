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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author pc2
 */
@Entity
@Table(name = "subcategory")

public class Subcategory extends BaseDomain {

   
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "subcategory")
    private Collection<Ownerkeyword> ownerkeywordCollection;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "subcategory")
    private Collection<Keyword> keywordCollection;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "subcategory")
    private Collection<Product> productCollection;

    private static final long serialVersionUID = 1L;

    @Basic(optional = false)
    @Column(name = "name")
    private String name;
    @Basic(optional = false)
    @Column(name = "status")
    private boolean status;
    @JoinColumn(name = "category_Id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Category category;

    public Subcategory() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
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
