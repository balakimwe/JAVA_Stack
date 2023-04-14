package balaki.book_club.services;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import balaki.book_club.models.Book;
import balaki.book_club.repositories.BookRepository;


@Service
public class BookService {

   @Autowired BookRepository bookRepository;

    public void createBook(@Valid Book book) {
        bookRepository.save(book);
    }

    public List<Book> getAllBooks() {
        return bookRepository.findAll();
    }

    public Book getOneBook(Long id) {
        Optional<Book> book = bookRepository.findById(id);
        return book.orElse(null);
    }

    public void updateBook(Book book) {
        bookRepository.save(book);
    }

    public void destroyBook(Long id) {
        bookRepository.deleteById(id);
    }
    
}
