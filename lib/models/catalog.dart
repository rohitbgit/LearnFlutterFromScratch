class CatalogModel {
  static final item = [
    Items(
        id: 1,
        name: "IPhone 12 Pro",
        desc: "Lorem ipsum dolor sit amet",
        price: 59900,
        color: "#5u6932",
        image:
            "https://freepngimg.com/download/apple_iphone/133290-11-pic-apple-iphone-free-download-png-hd.png")
  ];
}

class Items {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Items(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
