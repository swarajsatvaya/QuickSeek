/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.LoginDao;
import in.myproject.test.domain.Login;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

/**
 *
 * @author PC6
 */
public class LoginDaoJpa extends BaseDaoJpa<Login> implements LoginDao{
    
    public LoginDaoJpa() {
        super(Login.class, "Login");
    }

    @Override
    public Login loginCheck(String email, String password) {
        try {
            Query query = getEntityManager().createQuery("SELECT ul FROM Login AS ul WHERE ul.username=:email AND ul.password=:password");
            query.setParameter("password", password);
            query.setParameter("email", email);
            return (Login) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }
    }
    
}
