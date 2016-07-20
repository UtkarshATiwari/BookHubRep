package com.niit.bookhub.dao;

import java.util.List;

import com.niit.bookhub.model.Supplier;

public interface SupplierDAO {
	public void addNewSupplier(Supplier supplier);
	public List<Supplier> getAllSupplier();
	public Supplier edit(int id, Supplier supplier);
	public Supplier getSupplier(int id);
	public void delete(int id);

}
