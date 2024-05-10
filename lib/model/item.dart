class Item {
  String imgPath;
  double price;
  String location;
  String name;

  Item({required this.imgPath, required this.name, required this.price, this.location = "FLOWARAL"});
}

final List<Item> items = [
  Item(name: "product1", price: 13.99, imgPath: "assets/img/1.webp"),
  Item(name: "product2", price: 33.99, imgPath: "assets/img/2.webp"),
  Item(name: "product3", price: 22.99, imgPath: "assets/img/3.webp"),
  Item(name: "product4", price: 19.99, imgPath: "assets/img/4.webp"),
  Item(name: "product5", price: 18.99, imgPath: "assets/img/5.webp"),
  Item(name: "product6", price: 12.99, imgPath: "assets/img/6.webp"),
  Item(name: "product7", price: 17.99, imgPath: "assets/img/7.webp"),
  Item(name: "product8", price: 31.99, imgPath: "assets/img/8.webp"),
];