/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.ContactDao;
import in.myproject.test.domain.Contactdetails;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

/**
 *
 * @author pc2
 */
public class ContactDaoJpa extends BaseDaoJpa<Contactdetails> implements ContactDao{
    
    public ContactDaoJpa() {
        super(Contactdetails.class, "Contactdetails");
    }
    
    @Override
    public Contactdetails getDetails(int id) {
       try {
            Query query = getEntityManager().createQuery("SELECT ow FROM Contactdetails AS ow WHERE ow.ownerId=:id");
            query.setParameter("id", id);
            return (Contactdetails) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }
    }
    
}
