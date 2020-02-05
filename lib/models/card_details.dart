class CardDetail {
  double money ;
  String name ;
  String  logoUrl ; 
  String expiryDate ;
  CardDetail({
    this.money,
    this.name,
    this.logoUrl,
    this.expiryDate
  });
}

List <CardDetail>  cards= [
  CardDetail (
    money : 7534.11,
    name :'Platinum Plus',
    logoUrl : "assets/images/apple_logo.png",
    expiryDate : '12 / 24'
  ),
  CardDetail(
    money : 2617.14,
    name :'Standard',
    logoUrl : "assets/images/mc_downloads_symbol_350x200.png",
    expiryDate : '12 / 22'
  ),
];