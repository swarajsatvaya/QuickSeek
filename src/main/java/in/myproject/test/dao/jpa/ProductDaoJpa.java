/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.ProductDao;
import in.myproject.test.domain.Product;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

/**
 *
 * @author pc2
 */
public class ProductDaoJpa extends BaseDaoJpa<Product> implements ProductDao {

    public ProductDaoJpa() {
        super(Product.class, "Product");
    }

    @Override
    public Product checkProductName(String name) {
        try {
            Query query = getEntityManager().createQuery("SELECT p FROM Product AS p WHERE p.itemName=:name");
            query.setParameter("name", name);

            return (Product) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }

    }

}
