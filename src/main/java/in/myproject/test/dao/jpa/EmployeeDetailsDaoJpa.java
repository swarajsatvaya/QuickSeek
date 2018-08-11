/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.EmployeeDetailsDao;
import in.myproject.test.domain.Customerregistration;
import in.myproject.test.domain.Employeedetails;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

/**
 *
 * @author OdexLaptop
 */
public class EmployeeDetailsDaoJpa extends BaseDaoJpa<Employeedetails> implements EmployeeDetailsDao {

    public EmployeeDetailsDaoJpa() {
        super(Employeedetails.class, "Employeedetails");
    }

    @Override
    public Employeedetails checkMobileNo(String mobileNo) {
        try {
            Query query = getEntityManager().createQuery("SELECT c FROM Employeedetails AS c WHERE c.mobileNo=:mobileNo");
            query.setParameter("mobileNo", mobileNo);
            return (Employeedetails) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }
    }

    @Override
    public Employeedetails checkEmail(String email) {
        try {
            Query query = getEntityManager().createQuery("SELECT c FROM Employeedetails AS c WHERE c.email=:email");
            query.setParameter("email", email);
            return (Employeedetails) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }
    }

}
