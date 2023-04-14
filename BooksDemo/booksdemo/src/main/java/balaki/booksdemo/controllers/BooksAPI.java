package balaki.booksdemo.controllers;

import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import balaki.booksdemo.models.Book;
import balaki.booksdemo.repositories.BookRepository;



@RestController
public class BooksAPI {

    private BookRepository bookRepository;
    public void BooksApi(BookRepository bookRepository){
        this.bookRepository = bookRepository;
    }
    
    @RequestMapping(value="/api/books", method = RequestMethod.GET)
    public List<Book> allBooks(){
        List<Book> books = (List<Book>) bookRepository.findAll();
        return books;
        
    }
    
}
