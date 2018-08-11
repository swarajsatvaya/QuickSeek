/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.KeywordDao;
import in.myproject.test.domain.Keyword;
import java.util.List;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

/**
 *
 * @author pc2
 */
public class keywordDaoJpa extends BaseDaoJpa<Keyword> implements KeywordDao {

    public keywordDaoJpa() {
        super(Keyword.class, "Keyword");
    }

    @Override
    public Keyword checkKeywordName(String keywordname) {
        try {
            Query query = getEntityManager().createQuery("SELECT k FROM Keyword AS k WHERE k.keywordName=:keywordname");
            query.setParameter("keywordname", keywordname);

            return (Keyword) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }

    }

    @Override
    public List<Keyword> getKeyWord(long catagoryId, long subcatagoryId) {
        Query query = getEntityManager().createQuery("SELECT k FROM Keyword AS k WHERE k.category.id=:catagoryId AND k.subcategory.id=:subcatagoryId");
        query.setParameter("catagoryId", catagoryId);
        query.setParameter("subcatagoryId", subcatagoryId);
        return query.getResultList();
    }

}
