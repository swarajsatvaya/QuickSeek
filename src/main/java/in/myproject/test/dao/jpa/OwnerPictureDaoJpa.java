/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.OwnerPictureDao;
import in.myproject.test.domain.Businessdetails;
import in.myproject.test.domain.Ownerpicture;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

/**
 *
 * @author OdexLaptop
 */
public class OwnerPictureDaoJpa extends BaseDaoJpa<Ownerpicture> implements OwnerPictureDao{
    
    public OwnerPictureDaoJpa() {
        super(Ownerpicture.class, "Ownerpicture");
    }

    @Override
    public Ownerpicture getDetails(long id) {
         try {
            Query query = getEntityManager().createQuery("SELECT ow FROM Ownerpicture AS ow WHERE ow.ownerform.id=:id");
            query.setParameter("id", id);
            return (Ownerpicture) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }
    }
    
}
