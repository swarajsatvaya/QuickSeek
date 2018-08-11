/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao;

import in.myproject.test.domain.Subcategory;
import java.util.List;

/**
 *
 * @author pc2
 */
public interface SubcategoryDao extends BaseDao<Subcategory>{
    
    Subcategory checkSubCategory(String name);
    
    List<Subcategory> fetchSubcategoryByCategory(long category);
}
