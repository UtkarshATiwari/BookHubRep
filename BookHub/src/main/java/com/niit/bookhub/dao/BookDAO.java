package com.niit.bookhub.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.bookhub.beans.Book;

@Repository
public class BookDAO {
	
	public static List<Book> getBooks()
	{
		List<Book> b = new ArrayList<Book>();
//		
//		Book bk = new Book();
//		
//		bk.setId("Bk0001");
//		bk.setTitle("Catching Fire");
//		bk.setAuthor("Chetan Bhagat");
//		bk.setPrice(599);
//		b.add(bk);
//		bk = new Book();
//		bk.setId("Bk0002");
//		bk.setTitle("Lord Of The Rings ");
//		bk.setAuthor("Amish Tripathi");
//		bk.setPrice(699);
//		b.add(bk);
//		bk = new Book();
//		bk.setId("Bk0003");
//		bk.setTitle("The Secret Museum");
//		bk.setAuthor("Jawaharlal Nehru & Madhav Khosla");
//		bk.setPrice(499);
//		b.add(bk);
//		
//		System.out.println(b);
		return b;
	}

}
