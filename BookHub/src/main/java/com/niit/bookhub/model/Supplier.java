package com.niit.bookhub.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
 
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "SUPPLIER")
public class Supplier implements Serializable {

	
	
	private static final long serialVersionUID = 1L;
 
	@NotEmpty
	private String supplierName;
	@NotEmpty
	private String contactPerson;
	@NotEmpty
	@Size(min=10, max=11, message="Contact No. Should Be 10 digits")
	private String contactNo;
	private String supplieradd;
	private String description;
	
	@OneToMany(fetch=FetchType.LAZY,mappedBy="supplier")
	private Set<Product> productSet = new HashSet<Product>(0);
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int supplierId;
	
	@OneToMany(fetch=FetchType.LAZY,mappedBy="supplier")
	public Set<Product> getProductSet() {
		return productSet;
	}

	public void setProductSet(Set<Product> productSet) {
		this.productSet = productSet;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}

	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	
	public String getContactPerson() {
		return contactPerson;
	}

	public void setContactPerson(String contactPerson) {
		this.contactPerson = contactPerson;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	 
	
	public String getSupplieradd() {
		return supplieradd;
	}

	public void setSupplieradd(String supplieradd) {
		this.supplieradd = supplieradd;
	}
}
