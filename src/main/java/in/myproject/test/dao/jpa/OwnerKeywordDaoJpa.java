/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.OwnerKeywordDao;
import in.myproject.test.domain.Ownerform;
import in.myproject.test.domain.Ownerkeyword;
import java.util.List;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

/**
 *
 * @author OdexLaptop
 */
public class OwnerKeywordDaoJpa extends BaseDaoJpa<Ownerkeyword> implements OwnerKeywordDao {

    public OwnerKeywordDaoJpa() {
        super(Ownerkeyword.class, "Ownerkeyword");
    }

    @Override
    public List<Ownerkeyword> getDetails(String name) {
        Query query = getEntityManager().createQuery("SELECT ow FROM Ownerkeyword AS ow WHERE ow.category.name=:name OR ow.subcategory.name=:name");
        query.setParameter("name", name);
        return query.getResultList();
    }

    @Override
    public Ownerkeyword getDetailsByIdAndType(int id, String name) {
        try {
            Query query = getEntityManager().createQuery("SELECT ow FROM Ownerkeyword AS ow WHERE ow.ownerId=:id AND ow.category.name=:name OR ow.subcategory.name=:name");
            query.setParameter("name", name);
            query.setParameter("id", id);
            return (Ownerkeyword) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }
    }

    @Override
    public Ownerkeyword getDetails(int id) {
        try {
            Query query = getEntityManager().createQuery("SELECT ow FROM Ownerkeyword AS ow WHERE ow.ownerId=:id");
            query.setParameter("id", id);
            return (Ownerkeyword) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }
    }

}
