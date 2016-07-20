package com.niit.bookhub.dao;

import java.util.ArrayList;
import java.util.List;

import com.niit.bookhub.beans.HistoricalBook;

public class HistoricalDAO {
	
	public static List<HistoricalBook> getBooks()
	{
		List<HistoricalBook> hb = new ArrayList<HistoricalBook>();
		
		HistoricalBook hbk = new HistoricalBook();
		
		hbk.setId("Bk0001");
		hbk.setTitle("Catching Fire");
		hbk.setAuthor("Chetan Bhagat");
		hbk.setPrice(599);
		hb.add(hbk);
		hbk = new HistoricalBook();
		hbk.setId("Bk0002");
		hbk.setTitle("Lord Of The Rings ");
		hbk.setAuthor("Amish Tripathi");
		hbk.setPrice(699);
		hb.add(hbk);
		hbk = new HistoricalBook();
		hbk.setId("Bk0003");
		hbk.setTitle("The Secret Museum");
		hbk.setAuthor("Jawaharlal Nehru & Madhav Khosla");
		hbk.setPrice(499);
		hb.add(hbk);
		
		System.out.println(hb);
		return hb;
	}

}
