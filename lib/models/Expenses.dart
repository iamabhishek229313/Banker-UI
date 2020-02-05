class Expenses {
  String name ;
  String date ;
  double amount ;
  String imageUrl ;

  Expenses({
    this.name ,
    this.date ,
    this.amount,
    this.imageUrl
  });
}

List<Expenses> exp = [
  Expenses(
    name: "Netflix",
    date: '27 April 2019',
    amount: 7.99,
    imageUrl: 'assets/images/netflix_logo.png',
  ),
  Expenses(
    name: "DropBox",
    date: '20 April 2019',
    amount: 12.50,
    imageUrl: 'assets/images/dropbox_logo.png',
  ),
  Expenses(
    name: "Spotify",
    date: '14 May 2019',
    amount: 12.50,
    imageUrl: 'assets/images/spotify_logo.png',
  ),
  Expenses(
    name: "Uber",
    date: '14 May 2019',
    amount: 4.56,
    imageUrl: 'assets/images/uber_logo.png',
  ),
] ;