package com.niit.bookhub.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="CATEGORY")
public class Category implements Serializable{
	
	private int categoryId;
	private String name;
	private String description;
	
	private Set<Product> productSet = new HashSet<Product>(0);
	
	@OneToMany(fetch=FetchType.LAZY,mappedBy="category")
	public Set<Product> getProductSet() {
		return productSet;
	}

	
	public void setProductSet(Set<Product> productSet) {
		this.productSet = productSet;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="CategoryId")
	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int id) {
		this.categoryId = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
