/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.CustomerDao;
import in.myproject.test.domain.Customerregistration;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

/**
 *
 * @author pc2
 */
public class CustomerDaoJpa extends BaseDaoJpa<Customerregistration> implements CustomerDao{

    public CustomerDaoJpa() {
        super(Customerregistration.class, "Customerregistration");
    }

    @Override
    public Customerregistration checkPhone(String phone) {

        try {
            Query query = getEntityManager().createQuery("SELECT c FROM Customerregistration AS c WHERE c.mobileNo=:phone");
            query.setParameter("phone", phone);
            return (Customerregistration) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }

    }
    
}
