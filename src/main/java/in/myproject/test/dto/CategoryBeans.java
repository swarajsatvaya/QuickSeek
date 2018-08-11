/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dto;

import java.util.List;

/**
 *
 * @author OdexLaptop
 */
public class CategoryBeans {
    
    private String categoryName;
    private String id;
    private List<SubcategoryBean> subcategoryBeans;

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public List<SubcategoryBean> getSubcategoryBeans() {
        return subcategoryBeans;
    }

    public void setSubcategoryBeans(List<SubcategoryBean> subcategoryBeans) {
        this.subcategoryBeans = subcategoryBeans;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    
    
}
