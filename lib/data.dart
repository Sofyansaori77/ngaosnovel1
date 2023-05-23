class Novel {
  String title,
      writer,
      price,
      image,
      description =
          'Merupakan novel novel islami terlaris';
  int pages;
  double rating;

  Novel(
      this.title, this.writer, this.price, this.image, this.rating, this.pages);
}

final List<Novel> Novels = [
  Novel('ngegasngerem', 'Ngaos Novel', 'Rp 50.000', 'assets/ngegasngerem.jpg',
      3.5, 123),
  Novel('sabdocinta', 'Ngaos Novel', 'Rp 55.000', 'assets/sabdocinta.jpg', 4.5,
      200),
  Novel('lupaendonesa', 'Ngaos Novel', 'Rp 60.000', 'assets/lupaendonesa.jpg',
      5.0, 200),
  Novel(
      'scaled',
      'Ngaos Novel',
      'Rp 150.000',
      'assets/scaled.jpg',
      3.0,
      200),
  Novel('merayutuhan', 'Ngaos Novel', 'Rp 90.000',
      'assets/merayutuhan.jpg', 4.8, 234),
        Novel('crewet', 'Ngaos Novel', 'Rp 90.000',
      'assets/crewet.jpg', 4.8, 234),
  Novel('sejarah', 'Ngaos Novel', 'Rp 57.000',
      'assets/sejarah.jpg', 3.5, 123),
  Novel('cemburu', 'Ngaos Novel', 'Rp 56.000',
      'assets/cemburu.jpg', 4.8, 432),
 
];
