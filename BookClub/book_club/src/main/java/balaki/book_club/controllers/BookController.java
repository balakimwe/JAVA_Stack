package balaki.book_club.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import balaki.book_club.models.Book;
import balaki.book_club.services.BookService;


@Controller
public class BookController {


    @Autowired BookService bookService;

    //! CREATE

    @GetMapping("/books/new")
    public String newBook(@ModelAttribute("book")Book book){
        return "new.jsp";
    }

    @PostMapping("/books")
    public String createBook(@Valid @ModelAttribute("book")Book book, BindingResult result){
        System.out.println(book);
        bookService.createBook(book);
        return "redirect:/books";
    }
    
    //! READ ALL
    @GetMapping("/books")
    public String books(Model model, HttpSession session){
            if(session.getAttribute("userId") == null){
                return "redirect:/logout";
            }
        List<Book> books = bookService.getAllBooks();
        System.out.println(books);
        model.addAttribute("books", books);
        return "books.jsp";
    }


    //! READ ONE
    @GetMapping("/books/{id}")
    public String show(@PathVariable("id")Long id, Model model){
        Book book = bookService.getOneBook(id);
        model.addAttribute("book", book);
        return "show.jsp";
    }

    //!UPDADE
    @GetMapping("books/edit/{id}")
    public String edit(@PathVariable("id")Long id, Model model){
        Book book = bookService.getOneBook(id);
        model.addAttribute("book", book);
        return "edit.jsp";
    }


    @PutMapping("/books/{id}")
    public String update(@ModelAttribute("book")Book book){
        bookService.updateBook(book);
        return "redirect:/books";
    }


    //!Delete

    @DeleteMapping("/books/delete/{id}")
    public String destroy(@PathVariable("id")Long id, HttpSession session){
        bookService.destroyBook(id);
        return "redirect:/books";
    }  
}
