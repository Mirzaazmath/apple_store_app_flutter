class Item{
  final String image;
  final String price;
  final String title;
  final String description;
  Item({required this.image,required this.title,required this.description,required this.price});

}
List<Item>itemList=[
  Item(image: "assets/mask.webp", title: "iMask Pro", description: "( Available 13 December )", price: "\$99"),
  Item(image: "assets/iphone.png", title: "iPhone 14 Pro", description: "( Pro Camera Pro Display)", price: "\$999"),
  Item(image: "assets/watch.png", title: "Apple Watch", description: "( Apple Watch Series 6 )", price: "\$499"),
  Item(image: "assets/airpods.png", title: "AirPods Pro", description: "( AirPods Delivers Music )", price: "\$659")
];
