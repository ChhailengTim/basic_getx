// ignore_for_file: public_member_api_docs, sort_constructors_first
class Book {
  final String? title;
  final String? imageURL;
  Book({
    this.title,
    this.imageURL,
  });
}

List<Book> allBook = [
  Book(
    title: 'Meow Meow',
    imageURL: 'assets/images/cat1.jpg',
  ),
  Book(
    title: 'Cat Meow',
    imageURL: 'assets/images/cat2.png',
  ),
  Book(
    title: 'Fat Cat',
    imageURL: 'assets/images/cat3.jpg',
  ),
  Book(
    title: 'Tai Tai',
    imageURL: 'assets/images/cat4.jpg',
  ),
  Book(
    title: 'Ter Ter',
    imageURL: 'assets/images/cat5.jpg',
  ),
  Book(
    title: 'Ly Ly',
    imageURL: 'assets/images/cat6.jpg',
  ),
];
