class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  double discountedPrice(double discountPercent) {
    return price - (price * discountPercent / 100);
  }

  void printDetails(double discountPercent) {
    print('Title: $title');
    print('Author: $author');
    print('Original Price: \$$price');
    print('Discounted Price: \$${discountedPrice(discountPercent)}');
    print('---');
  }
}

void main() {
  Book book1 = Book('Flutter in Action', 'Eric Windmill', 500);
  Book book2 = Book('Clean Code', 'Robert Martin', 800);

  book1.printDetails(10);
  book2.printDetails(20);
}