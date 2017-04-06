package service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import domain.Book;
import domain.Category;


@Service
public class BookServiceImpl implements BookService{
	
	private List<Category> categories;
	private List<Book> books;
	
	public BookServiceImpl(){
		categories = new ArrayList<Category>();
		Category category1 = new Category(1,"computing");
		Category category2 = new Category(2,"travel");
		Category category3 = new Category(3,"health");
		categories.add(category1);
		categories.add(category2);
		categories.add(category3);
		
		
		books = new ArrayList<Book>();
		Book book1 = new Book(1L,"5297249279","servlet&&jsp",category1,"tomchen");
		Book book2 = new Book(2L,"35226363235","in the name of people",category2,"tomchden");
		Book book3 = new Book(3L,"2522636457","seddddd",category3,"tomdechen");
		books.add(book1);
		books.add(book2);
		books.add(book3);
	}
	
	@Override
	public List<Category> getAllCategories(){
		return categories;
	}
	@Override
	public Category getCategory(int id){
		for(Category category : categories){
			if(id == category.getId()){
				return category;
			}
		}
		return null;
	}
	@Override
	public List<Book> getAllBooks(){
		return books;
	}
	@Override
	public Book save(Book book){
		book.setId(getNextId());
		books.add(book);
		return book;
	}
	@Override
	public Book update(Book book){
		int bookCount = books.size();
		for(int i=0;i<bookCount;i++){
			Book savedBook = books.get(i);
			if(savedBook.getId() == book.getId()){
				books.set(i,book);
				return book;
			}
		}
		return book;
	}
	@Override
	public Book get(long id){
			for(Book book : books){
			if(id == book.getId()){
				return book;
			}
		}
		return null;
	}
	@Override
	public long getNextId(){
		long id = 0L;
		for(Book book : books){
			long bookId = book.getId();
			if(bookId > id){
				id = bookId;
			}
		}
		return id + 1;
	}
}
