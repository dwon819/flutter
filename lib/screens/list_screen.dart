import 'package:flutter/material.dart';
import 'package:study_project/repositories/book_repository.dart';
import 'package:study_project/screens/detail_screen.dart';
import '../models/book.dart';

class BookTile extends StatelessWidget {
  final Book book;
  BookTile({required this.book});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text(book.title),
      leading: Image.network(book.image),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => DetailScreen(book: book)));
      },
    );
  }
}

class ListScreen extends StatelessWidget {
  final List<Book> books = BookRepository().getBooks();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Book List Application'),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return BookTile(book: books[index]);
        },
      ),
    );
  }
}
