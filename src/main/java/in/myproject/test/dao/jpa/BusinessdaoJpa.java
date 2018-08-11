/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.BusinessDao;
import in.myproject.test.domain.Businessdetails;
import in.myproject.test.domain.Ownerform;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

/**
 *
 * @author pc2
 */
public class BusinessdaoJpa extends BaseDaoJpa<Businessdetails> implements BusinessDao{
    
    public BusinessdaoJpa() {
        super(Businessdetails.class, "Businessdetails");
    }

    @Override
    public Businessdetails getDetails(int id) {
       try {
           System.out.println("Id is in Businessdetails"+id);
            Query query = getEntityManager().createQuery("SELECT ow FROM Businessdetails AS ow WHERE ow.ownerId=:id");
            query.setParameter("id", id);
            return (Businessdetails) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }
    }
    
    
}
