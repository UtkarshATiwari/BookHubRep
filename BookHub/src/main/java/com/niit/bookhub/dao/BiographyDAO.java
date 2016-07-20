package com.niit.bookhub.dao;

import java.util.ArrayList;
import java.util.List;

import com.niit.bookhub.beans.BiographyBook;



public class BiographyDAO {
	
	public static List<BiographyBook> getBooks()
	{
		List<BiographyBook> bb = new ArrayList<BiographyBook>();
		
		BiographyBook bbk = new BiographyBook();
		
		bbk.setId("Bk0001");
		bbk.setTitle("Catching Fire");
		bbk.setAuthor("Chetan Bhagat");
		bbk.setPrice(599);
		bb.add(bbk);
		bbk = new BiographyBook();
		bbk.setId("Bk0002");
		bbk.setTitle("Lord Of The Rings ");
		bbk.setAuthor("Amish Tripathi");
		bbk.setPrice(699);
		bb.add(bbk);
		bbk = new BiographyBook();
		bbk.setId("Bk0003");
		bbk.setTitle("The Secret Museum");
		bbk.setAuthor("Jawaharlal Nehru & Madhav Khosla");
		bbk.setPrice(499);
		bb.add(bbk);
		
		System.out.println(bb);
		return bb;
	}

}
