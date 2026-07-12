package com.cognizant.library;

public class BookService {

    private BookRepository repository = new BookRepository();

    public void displayService() {

        repository.displayRepository();

        System.out.println("Book Service Initialized");

    }

}
