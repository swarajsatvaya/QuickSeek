/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package in.myproject.test.dao.jpa;

import in.myproject.test.dao.OwnerDao;
import in.myproject.test.domain.Ownerform;
import java.util.List;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Query;

/**
 *
 * @author pc2
 */
public class OwnerDaoJpa extends BaseDaoJpa<Ownerform> implements OwnerDao {

    public OwnerDaoJpa() {
        super(Ownerform.class, "Ownerform");
    }

    @Override
    public Ownerform checkPhone(String phone) {
        try {
            Query query = getEntityManager().createQuery("SELECT ow FROM Ownerform AS ow WHERE ow.mobileNo=:phone");
            query.setParameter("phone", phone);
            return (Ownerform) query.getSingleResult();
        } catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }
    }

    @Override
    public List<Ownerform> getAllDetailsByCityName(String name) {
        Query query = getEntityManager().createQuery("SELECT ow FROM Ownerform AS ow WHERE ow.city.cityName=:name and ow.status=:status");
        query.setParameter("name", name);
        query.setParameter("status", Boolean.TRUE);
        return query.getResultList();
    }

    @Override
    public List<Ownerform> loadAllByStatus() {
        Query query=getEntityManager().createQuery("SELECT ow FROM Ownerform AS ow WHERE ow.status=:status");
        query.setParameter("status", Boolean.TRUE);
        return query.getResultList();
    }

    @Override
    public Ownerform loadByIdAndStatus(long id) {
        try{
        Query query=getEntityManager().createQuery("SELECT OW FROM  Ownerform AS OW WHERE OW.id=:ID AND OW.status=:status");
        query.setParameter("ID", id);
        query.setParameter("status", Boolean.TRUE);
        return (Ownerform) query.getSingleResult();
        }catch (NoResultException nre) {
            return null;
        } catch (NonUniqueResultException e) {
            return null;
        }
    }

}
