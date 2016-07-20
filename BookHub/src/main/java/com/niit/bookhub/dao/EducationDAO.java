package com.niit.bookhub.dao;

import java.util.ArrayList;
import java.util.List;

import com.niit.bookhub.beans.EducationBook;

public class EducationDAO {

	public static List<EducationBook> getBooks() {
		List<EducationBook> eb = new ArrayList<EducationBook>();

		EducationBook ebk = new EducationBook();

		ebk.setId("Bk0001");
		ebk.setTitle("Catching Fire");
		ebk.setAuthor("Chetan Bhagat");
		ebk.setPrice(599);
		eb.add(ebk);
		ebk = new EducationBook();
		ebk.setId("Bk0002");
		ebk.setTitle("Lord Of The Rings ");
		ebk.setAuthor("Amish Tripathi");
		ebk.setPrice(699);
		eb.add(ebk);
		ebk = new EducationBook();
		ebk.setId("Bk0003");
		ebk.setTitle("The Secret Museum");
		ebk.setAuthor("Jawaharlal Nehru & Madhav Khosla");
		ebk.setPrice(499);
		eb.add(ebk);

		System.out.println(eb);
		return eb;
	}

}
