/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.AdminDao;
import in.myproject.test.domain.Admin;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

/**
 *
 * @author PC6
 */
public class AdminDaoJpa extends BaseDaoJpa<Admin> implements AdminDao {

    public AdminDaoJpa() {
        super(Admin.class, "Admin");
    }

    @Override
    public Admin loginCheck(String username, String password) {
        try {
            Query query = getEntityManager().createQuery("SELECT ul FROM Admin AS ul WHERE ul.username=:username AND ul.password=:password");
            query.setParameter("username", username);
            query.setParameter("password", password);
            return (Admin) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }
    }

    @Override
    public Admin checkUser(String username, String email) {
        try {
            Query query = getEntityManager().createQuery("SELECT ul FROM Admin AS ul WHERE ul.username=:username AND ul.email=:email");
            query.setParameter("username", username);
            query.setParameter("email", email);
            return (Admin) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }
    }

    

}
