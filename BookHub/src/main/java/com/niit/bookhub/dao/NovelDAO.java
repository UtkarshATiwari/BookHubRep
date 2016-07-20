package com.niit.bookhub.dao;

import java.util.ArrayList;
import java.util.List;

import com.niit.bookhub.beans.NovelBook;


public class NovelDAO {
	
	public static List<NovelBook> getBooks()
	{
		List<NovelBook> nb = new ArrayList<NovelBook>();
		
		NovelBook nbk = new NovelBook();
		
		nbk.setId("Bk0001");
		nbk.setTitle("Catching Fire");
		nbk.setAuthor("Chetan Bhagat");
		nbk.setPrice(599);
		nb.add(nbk);
		nbk = new NovelBook();
		nbk.setId("Bk0002");
		nbk.setTitle("Lord Of The Rings ");
		nbk.setAuthor("Amish Tripathi");
		nbk.setPrice(699);
		nb.add(nbk);
		nbk = new NovelBook();
		nbk.setId("Bk0003");
		nbk.setTitle("The Secret Museum");
		nbk.setAuthor("Jawaharlal Nehru & Madhav Khosla");
		nbk.setPrice(499);
		nb.add(nbk);
		
		System.out.println(nb);
		return nb;
	}

}
