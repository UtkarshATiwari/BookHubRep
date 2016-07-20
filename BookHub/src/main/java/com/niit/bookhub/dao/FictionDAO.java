package com.niit.bookhub.dao;

import java.util.ArrayList;
import java.util.List;

import com.niit.bookhub.beans.FictionBook;

public class FictionDAO {
	
	public static List<FictionBook> getBooks()
	{
		List<FictionBook> fb = new ArrayList<FictionBook>();
		
		FictionBook fbk = new FictionBook();
		
		fbk.setId("Bk0001");
		fbk.setTitle("Catching Fire");
		fbk.setAuthor("Chetan Bhagat");
		fbk.setPrice(599);
		fb.add(fbk);
		fbk = new FictionBook();
		fbk.setId("Bk0002");
		fbk.setTitle("Lord Of The Rings ");
		fbk.setAuthor("Amish Tripathi");
		fbk.setPrice(699);
		fb.add(fbk);
		fbk = new FictionBook();
		fbk.setId("Bk0003");
		fbk.setTitle("The Secret Museum");
		fbk.setAuthor("Jawaharlal Nehru & Madhav Khosla");
		fbk.setPrice(499);
		fb.add(fbk);
		
		System.out.println(fb);
		return fb;
	}

}
