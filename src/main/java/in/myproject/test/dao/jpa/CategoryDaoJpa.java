/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.CategoryDao;
import in.myproject.test.domain.Category;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

/**
 *
 * @author pc2
 */
public class CategoryDaoJpa extends BaseDaoJpa<Category> implements CategoryDao
{

    public CategoryDaoJpa() {
        super(Category.class, "Category");
    }

    @Override
    public Category checkCategory(String name) {
      
        try {
            Query query = getEntityManager().createQuery("SELECT n FROM Category AS n WHERE n.name=:name");
            query.setParameter("name", name);
            
            return (Category) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }
    }
    
}
