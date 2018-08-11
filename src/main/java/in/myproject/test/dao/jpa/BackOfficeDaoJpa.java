/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.BackOfficeDao;
import in.myproject.test.domain.Backofficeemployee;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

/**
 *
 * @author pc2
 */
public class BackOfficeDaoJpa extends BaseDaoJpa<Backofficeemployee> implements BackOfficeDao{

    public BackOfficeDaoJpa() {
        super(Backofficeemployee.class, "Backofficeemployee");
    }

    @Override
    public Backofficeemployee checkDesignationName(String name) {
            try {
            Query query = getEntityManager().createQuery("SELECT bc FROM Backofficeemployee AS bc WHERE bc.designation=:name");
            query.setParameter("name", name);
            
            return (Backofficeemployee) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }

    }
    
}
