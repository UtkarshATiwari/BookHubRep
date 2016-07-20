package com.niit.bookhub.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.niit.bookhub.model.Supplier;

@Transactional
@Repository
public class SupplierDAOImpl implements SupplierDAO {

	@Autowired
	SessionFactory mysessionFactory;
	
	public void addNewSupplier(Supplier supplier)
	{
		Session session = mysessionFactory.openSession();
		Serializable objId = session.save(supplier);
		System.out.println(objId.toString());
		if(objId!=null)
			System.out.println("Supplier Added");
		else
			System.out.println("Supplier Cant be Added");
		session.close();
	}
	
	public List<Supplier> getAllSupplier() {
		Session session = mysessionFactory.openSession();
		
		Criteria criteria=session.createCriteria(Supplier.class);
		List<Supplier> supplierList = criteria.list();
		session.close();
		return supplierList;
	}
	
	public Supplier edit(int id, Supplier supplier){
		System.out.println("Edit Supplier");
		Session session = mysessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Supplier sup = (Supplier)session.get(Supplier.class,id);
		sup.setDescription(supplier.getDescription());
		sup.setSupplierName(supplier.getSupplierName());
		sup.setContactNo(supplier.getContactNo());
		sup.setContactPerson(supplier.getContactPerson());
//		sup.setProduct(supplier.getProduct());
		sup.setSupplieradd(supplier.getSupplieradd());
		sup.setSupplierName(supplier.getSupplierName());
		System.out.println(sup.getDescription());
		session.saveOrUpdate(sup);
		tx.commit();
		session.close();
		return sup;
	}
	
	public Supplier getSupplier(int id) {
		
		Session session = mysessionFactory.openSession();
		Supplier supplier = (Supplier)session.get(Supplier.class,id);
		return supplier;
	}

	public void delete(int id){
		System.out.println("Delete Supplier");
		Session session = mysessionFactory.openSession();
		org.hibernate.Transaction tx = session.beginTransaction();
		Supplier sup =(Supplier)session.load(Supplier.class,id);
		
		session.delete(sup);
		tx.commit();
		session.close();
		
	}

}
