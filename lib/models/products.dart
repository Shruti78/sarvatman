import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  late final String id;

  late final String name;
  late final String description;
  late final String imgUrl;
  Product({
    required this.description,
    required this.id,
    required this.imgUrl,
    required this.name,
  });
}

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: '1',
      name: 'Bike',
      imgUrl:
          'https://imgd.aeplcdn.com/1056x594/n/cw/ec/102709/ntorq-125-right-front-three-quarter.jpeg?isig=0&q=75',
      description:
          'Trump: The Art of the Deal is a 1987 book credited to Donald J. Trump and journalist Tony Schwartz. Part memoir and part business-advice book, it was the first book credited to Trump, and helped to make him a "household name".',
    ),
    Product(
      id: '2',
      name: 'Rich Dad Poor Dad',
      imgUrl:
          'https://upload.wikimedia.org/wikipedia/en/b/b9/Rich_Dad_Poor_Dad.jpg',
      description:
          'Rich Dad Poor Dad is a 1997 book written by Robert Kiyosaki and Sharon Lechter. It advocates the importance of financial literacy, financial independence and building wealth through investing in assets',
    ),
    Product(
      id: '3',
      name: 'PS4 Dual Shock',
      imgUrl:
          'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGhvbmV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      description:
          'The PlayStation 4 (officially abbreviated as PS4) is an eighth-generation home video game console developed by Sony Interactive Entertainment. Announced as the successor to the PlayStation 3 in February 2013, it was launched on November 15 in North America, November 29 in Europe, South America and Australia, and on February 22, 2014 in Japan.',
    ),
    Product(
      id: '4',
      name: 'GTA V',
      imgUrl:
          'https://upload.wikimedia.org/wikipedia/en/a/a5/Grand_Theft_Auto_V.png',
      description: 'Best selling poular free roaming game',
    ),
    Product(
      id: '5',
      name: 'car',
      imgUrl:
          'https://imgd-ct.aeplcdn.com/1056x660/n/cw/ec/106257/venue-exterior-front-view-3.jpeg?isig=0&q=75',
      description: 'Free roam classic by Rockstar',
    ),
    Product(
      id: '6',
      name: 'Acer Aspire',
      imgUrl: 'https://www.hilaptop.com/userdata/public/gfx/6060.jpg',
      description: '8 gb ram, mx 150.',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }
  

  Product findById(String id) {
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}
