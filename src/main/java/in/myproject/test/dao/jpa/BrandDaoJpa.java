/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.BrandDao;
import in.myproject.test.domain.Brand;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

/**
 *
 * @author pc2
 */
public class BrandDaoJpa extends BaseDaoJpa<Brand> implements BrandDao{

    public BrandDaoJpa() {
        super(Brand.class, "Brand");
    }

    @Override
    public Brand checkBrandname(String name) {
        try {
            Query query = getEntityManager().createQuery("SELECT b FROM Brand AS b WHERE b.name=:name");
            query.setParameter("name", name);
            
            return (Brand) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }

    }
    
}
