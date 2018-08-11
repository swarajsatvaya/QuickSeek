/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.SubcategoryDao;
import in.myproject.test.domain.Subcategory;
import java.util.List;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

/**
 *
 * @author pc2
 */
public class SubcategoryDaoJpa extends BaseDaoJpa<Subcategory> implements SubcategoryDao{

    public SubcategoryDaoJpa() {
        super(Subcategory.class,"Subcategory");
    }

    @Override
    public Subcategory checkSubCategory(String name) {
        try {
            Query query = getEntityManager().createQuery("SELECT s FROM Subcategory AS s WHERE s.name=:name");
            query.setParameter("name", name);
            
            return (Subcategory) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }
    }

    @Override
    public List<Subcategory> fetchSubcategoryByCategory(long category) {
        Query query =getEntityManager().createQuery("SELECT s FROM Subcategory AS s WHERE s.category.id=:category");
        query.setParameter("category", category);
        return query.getResultList();

    }
    
}
