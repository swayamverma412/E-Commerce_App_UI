
class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final double price;

  Product({
    required this.id,
    required this.images,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/abc_mascara.jpg",
    ],
    title: "ABC Mascara",
    price: 125,
    description: description,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/xyz_toner.jpg",
    ],
    title: "XYZ Toner",
    price: 135,
    description: description,
  
  ),
  Product(
    id: 3,
    images: [
      "assets/images/xyx_lipstick.jpg",
    ],
    
    title: "XYZ Lipstick",
    price: 864,
    description: description,
    
  ),
  Product(
    id: 4,
    images: [
      "assets/images/xyz_eyeliner.jpg",
    ],
    title: "XYZ Eyeliner",
    price: 104,
    description: description,
    
  ),
  Product(
    id: 5,
    images: [
      "assets/images/clinque.jpg",
    
    ],
    title: "Clinque Lipstick ",
    price: 525,
    description: description,
    
  ),
  Product(
    id: 6,
    images: [
      "assets/images/abc_eyeliner.jpg",
    ],
    title: "ABC Eyeliner",
    price: 140,
    description: description,
    
  ),
  Product(
    id: 7,
    images: [
      "assets/images/curology.jpg",
    ],
    
    title: "Curology Facewash",
    price: 85,
    description: description,
    
  ),

];

const String description =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
