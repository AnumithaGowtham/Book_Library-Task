class Book {
  int id;
  String title;
  String author;
  String description;
  String coverUrl;
  String category;
  num rating;

  Book(this.title, this.author, this.description, this.coverUrl, this.category,
      this.rating);
  /*Book.withId(this._id, this._title, this._author, this._description,
      this._coverUrl, this._category, this._rating);

  int get id => id;
  String get title => _title;
  String get author => _author;
  String get description => _description;
  String get coverUrl => _coverUrl;
  String get category => _category;
  num get rating => _rating;

  set title(String newTitle) {
    if (newTitle.length <= 255) {
      this._title = newTitle;
    }
  }

  set author(String newAuthor) {
    if (newAuthor.length <= 255) {
      this._author = newAuthor;
    }
  }

  set description(String newDescription) {
    if (newDescription.length <= 255) {
      this._description = newDescription;
    }
  }

  set coverUrl(String newCoverUrl) {
    this._coverUrl = newCoverUrl;
  }

  set category(String newCategory) {
    if (newCategory.length <= 255) {
      this._title = newCategory;
    }
  }

  set rating(num newRating) {
    this._rating = newRating;
  }

  // Convert a Note object into a Map object
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['author'] = _author;
    map['description'] = _description;
    map['coverUrl'] = _coverUrl;
    map['category'] = _category;
    map['rating'] = _rating;

    return map;
  }

  // Extract a Note object from a Map object
  Book.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._title = map['title'];
    this._author = map['author'];
    this._description = map['description'];
    this._coverUrl = map['coverUrl'];
    this._category = map['category'];
    this._rating = map['rating'];
  }*/
}

final initialBooks = [
  Book(
    'Ancient and Medieval India',
    'Dahiya Poonam Dalal',
    'Combining storytelling and historical analysis, the book Ancient and Medieval India, Second edition by Poonam Dalal Dahiya reveals fascinating legacy covering all important aspects meant for the aspirants of the Union Public Service Commission as well as various state public service examinations.',
    'https://www.mheducation.co.in/media/catalog/product/cache/84c63a40cf0771f03c9446b22a7e0f08/9/7/9789390113644_27.jpeg',
    'History',
    9.0,
  ),
  Book(
    'Indian Economy Key Concepts',
    'Karuppiah Sankarganesh',
    'Topics are well explained and its easy to understand.It is like basic book for the terms and terminology of Economy and its related subjects',
    'https://images-na.ssl-images-amazon.com/images/I/41kBVPyVL5L._SX376_BO1,204,203,200_.jpg',
    'Political Science',
    7.0,
  ),
  Book(
    'Wings of Fire',
    'Tiwari Arun',
    'One of the most inspiring and popular autobiographies to read is Late Abdul Kalam’s Wings of Fire. In this book, the former president shares his personal experiences and minutest details of his life.',
    'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1588286863l/634583._SY475_.jpg',
    'Biography & Autobiography',
    9,
  ),
];

final bookToAdd = Book(
  'Harry Potter',
  'JK Rowling',
  'In an age with kings and kings',
  'https://www.harrypotterfanzone.com/article/wp-content/uploads/2018/11/jonny-duddle-goblet-of-fire-cover.png',
  'Fantasy',
  9.2,
);
