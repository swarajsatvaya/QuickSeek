/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.CartDao;
import in.myproject.test.domain.Cart;
import java.util.List;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

/**
 *
 * @author OdexLaptop
 */
public class CartDaoJpa extends BaseDaoJpa<Cart> implements CartDao {

    public CartDaoJpa() {
        super(Cart.class, "Cart");
    }

    @Override
    public Cart checkCart(int userId, int upgradeId) {
        try {
            Query query = getEntityManager().createQuery("SELECT ul FROM Cart AS ul WHERE ul.upgradeId=:upgradeId AND ul.userId=:userId");
            query.setParameter("userId", userId);
            query.setParameter("upgradeId", upgradeId);
            return (Cart) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }
    }

    @Override
    public List<Cart> getAllCartDetails(int userId) {
        Query query = getEntityManager().createQuery("SELECT ul FROM Cart AS ul WHERE ul.userId=:userId");
        query.setParameter("userId", userId);
        return query.getResultList();
    }

}
