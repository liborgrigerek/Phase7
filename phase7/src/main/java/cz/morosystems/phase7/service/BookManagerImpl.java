package cz.morosystems.phase7.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cz.morosystems.phase7.dao.BookDAO;
import cz.morosystems.phase7.dao.UserDAO;
import cz.morosystems.phase7.entity.BookEntity;
import cz.morosystems.phase7.entity.UserEntity;

@Service
public class BookManagerImpl implements BookManager {
	
	@Autowired
    private BookDAO bookDAO;

	@Transactional
	public BookEntity getBook(Integer bookId) {
		return bookDAO.getBook(bookId);
	}
	
	@Transactional
	public void addBook(BookEntity book) {
		bookDAO.addBook(book);
	}
	
	@Transactional
	public void editBook(BookEntity book) {
		bookDAO.editBook(book);
	}
	
	@Transactional
	public void deleteBook(Integer bookId) {
		bookDAO.deleteBook(bookId);
	}

	public void setBookDAO(BookDAO bookDAO) {
		this.bookDAO = bookDAO;
	}
}
