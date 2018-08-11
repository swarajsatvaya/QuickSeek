/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.UserDao;
import in.myproject.test.domain.User;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

/**
 *
 * @author pc2
 */
public class UserDaoJpa extends BaseDaoJpa<User> implements UserDao {

    public UserDaoJpa() {
        super(User.class, "User");
    }

    @Override
    public User checkEmail(String email) {
        try {
            Query query = getEntityManager().createQuery("SELECT ul FROM User AS ul WHERE ul.emailId=:email");
            query.setParameter("email", email);
            return (User) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }
    }

    @Override
    public User checkPhone(String phone) {
        try {
            Query query = getEntityManager().createQuery("SELECT ul FROM User AS ul WHERE ul.phone_no=:phone");
            query.setParameter("phone", phone);
            return (User) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }
    }

    @Override
    public User loginCheck(String email, String password) {
        try {
            Query query = getEntityManager().createQuery("SELECT ul FROM User AS ul WHERE ul.emailId=:email AND ul.password=:password");
            query.setParameter("password", password);
            query.setParameter("email", email);
            return (User) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }
    }

    

}
