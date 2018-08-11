/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.EmployeepositionDao;
import in.myproject.test.domain.Employeeposition;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

/**
 *
 * @author pc2
 */
public class EmployeepositionDaoJpa extends BaseDaoJpa<Employeeposition> implements EmployeepositionDao {

    public EmployeepositionDaoJpa() {
        super(Employeeposition.class, "Employeeposition");
    }

    @Override
    public Employeeposition checkPositionName(String name) {
        try {
            Query query = getEntityManager().createQuery("SELECT e FROM Employeeposition AS e WHERE e.positionName=:name");
            query.setParameter("name", name);

            return (Employeeposition) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }

    }

    @Override
    public Employeeposition getDetailsByUserId(String userId) {
        try {
            Query query = getEntityManager().createQuery("SELECT e FROM Employeeposition AS e WHERE e.userId=:userId");
            query.setParameter("userId", userId);

            return (Employeeposition) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }

    }

}
