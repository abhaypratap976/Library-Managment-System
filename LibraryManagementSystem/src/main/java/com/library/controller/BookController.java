package com.library.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.library.model.Book;
import com.library.service.BookService;

@Controller
public class BookController {
	
	private BookService bookServices;
	
	public BookController(BookService bookServices) {
		super();
		this.bookServices = bookServices;
	}
	
	@GetMapping("/")
	public String home() {
		return "index";
	}
	
	
	@GetMapping("/add-book")
	public String addBookPage() {
	    return "add-book";
	}
	
	
	@PostMapping("/addBook")
	public String saveBook(Book book, Model model) {

	    if (book.getTitle() == null || book.getTitle().trim().isEmpty()
	            || book.getAuthor() == null || book.getAuthor().trim().isEmpty()
	            || book.getIsbn() == null || book.getIsbn().trim().isEmpty()
	            || book.getPublishedYear() == 0) {

	        model.addAttribute("error", "Please fill all book details!");

	        return "add-book";
	    }

	    
	    bookServices.saveBook(book);

	    return "redirect:/viewbooks";
	}
	
	@GetMapping("/viewbooks")
	public String viewBooks(Model model) {
		
		List<Book> books = bookServices.getAllBooks();
		model.addAttribute("books",books);
		
		return "view-books";
	
	}
	
	@GetMapping("/deleteBook/{id}")
    public String deleteBook(@PathVariable int id) {

        bookServices.deleteBookById(id);

        return "redirect:/viewbooks";
    }
	
	
	@GetMapping("/search-book")
	public String searchBookPage() {
	    return "search-book";
	}
	
	
	@GetMapping("/search-book/title")
	public String searchByTitle(
	        @RequestParam String title,
	        Model model) {

	    List<Book> books = bookServices.getBooksByTitle(title);

	    model.addAttribute("books", books);

	    model.addAttribute("searchType", "Title");
	    model.addAttribute("searchValue", title);

	    return "search-book";
	}
	
	@GetMapping("/search-book/isbn")
	public String searchByIsbn(
	        @RequestParam String isbn,
	        Model model) {

	    List<Book> books = bookServices.getBooksByIsbn(isbn);

	    model.addAttribute("books", books);

	    model.addAttribute("searchType", "ISBN");
	    model.addAttribute("searchValue", isbn);

	    return "search-book";
	}
	
	@GetMapping("/editBook/{id}")
	public String editBook(@PathVariable int id, Model model) {

	    Book book = bookServices.getBookById(id);

	    if (book == null) {
	        return "redirect:/viewbooks";
	    }

	    model.addAttribute("book", book);

	    return "add-book";
	}
	
	@PostMapping("/updateBook")
	public String updateBook(Book book, Model model) {

	    if (book.getTitle() == null || book.getTitle().trim().isEmpty()
	            || book.getAuthor() == null || book.getAuthor().trim().isEmpty()
	            || book.getIsbn() == null || book.getIsbn().trim().isEmpty()
	            || book.getPublishedYear() == null
	            || book.getPublishedYear() == 0) {

	        model.addAttribute("error", "Please fill all book details!");

	        return "add-book";
	    }

	    bookServices.updateBook(book);

	    return "redirect:/viewbooks";
	}
	

	
	
	@GetMapping("/about")
	public String about() {
	    return "about";
	}

	@GetMapping("/contact")
	public String contact() {
	    return "contact";
	}

}
