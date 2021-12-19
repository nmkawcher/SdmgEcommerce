class Product{
  final String productName;
  final String description;
  final List<String>imageList;
  final bool IsFavourite;
  final double price;
  final List<String>sizeList;

  Product({required this.productName,required this.description, required this.imageList, required this.IsFavourite,
      required this.price, required this.sizeList});


}

List<Product>productList=[
  Product(productName: "Original T-shirt", description: "Orginal cotton Made in Bangladesh", imageList: ["product 1 image.png","product 1 image.png","product 1 image.png"], IsFavourite: false, price: 600, sizeList: ["M","L","S"]),
  Product(productName: "Original T-shirt", description: "Orginal cotton Made in Bangladesh", imageList: ["product 1 image.png","product 1 image.png","product 1 image.png"], IsFavourite: false, price: 600, sizeList: ["M","L","S"]),
  Product(productName: "Original T-shirt", description: "Orginal cotton Made in Bangladesh", imageList: ["product 1 image.png","product 1 image.png","product 1 image.png"], IsFavourite: false, price: 600, sizeList: ["M","L","S"]),
  Product(productName: "Original T-shirt", description: "Orginal cotton Made in Bangladesh", imageList: ["product 1 image.png","product 1 image.png","product 1 image.png"], IsFavourite: false, price: 600, sizeList: ["M","L","S"]),
  Product(productName: "Original T-shirt", description: "Orginal cotton Made in Bangladesh", imageList: ["product 1 image.png","product 1 image.png","product 1 image.png"], IsFavourite: false, price: 600, sizeList: ["M","L","S"]),
  Product(productName: "Original T-shirt", description: "Orginal cotton Made in Bangladesh", imageList: ["product 1 image.png","product 1 image.png","product 1 image.png"], IsFavourite: false, price: 600, sizeList: ["M","L","S"]),
  Product(productName: "Original T-shirt", description: "Orginal cotton Made in Bangladesh", imageList: ["product 1 image.png","product 1 image.png","product 1 image.png"], IsFavourite: false, price: 600, sizeList: ["M","L","S"]),

];