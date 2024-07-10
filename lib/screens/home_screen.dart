import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      'title': 'Food delivery',
      'subtitle': 'Order food you love',
      'imagePath': 'assets/Food_Delivery.png',
    },
    {
      'title': 'pandamart',
      'subtitle': 'Essentials delivery fast',
      'imagePath': 'assets/pandamart.png',
    },
    {
      'title': 'Shops',
      'subtitle': 'Top brands to \nyour door',
      'imagePath': 'assets/shops.png',
    },
    {
      'title': 'Pick-up',
      'subtitle': 'Self-collect for \n50% off',
      'imagePath': 'assets/pick_up.png',
    },
    {
      'title': 'pandago',
      'subtitle': 'Send parcels in a \ntap',
      'imagePath': 'assets/pandago.png',
    },
  ];

  final List<Map<String, dynamic>> restaurants = [
    {
      'name': 'MMK-S FOODS',
      'rating': '4.0',
      'reviews': '50+',
      'imagePath': 'assets/MMK-S FOODS.jpg',
      'minOrder': 'PKR 199 minimum',
      'cuisine': 'Pakistani',
      'time': '5-20 min',
      'discount': '5% off',
      'deliveryType': 'Free Delivery',
    },
    {
      'name': 'Food Place',
      'rating': '4.4',
      'reviews': '100+',
      'imagePath': 'assets/Food Place.jpg',
      'minOrder': 'PKR 199 minimum',
      'cuisine': 'Pakistani',
      'time': '15-30 min',
      'discount': '',
      'deliveryType': 'Free Delivery',
    },
    {
      'name': 'Burger House',
      'rating': '4.7',
      'reviews': '200+',
      'imagePath': 'assets/Burger House.jpg',
      'minOrder': 'PKR 299 minimum',
      'cuisine': 'Pakistani',
      'time': '10-25 min',
      'discount': '10% off',
      'deliveryType': 'Free Delivery',
    },
    {
      'name': 'Pizza House',
      'rating': '4.5',
      'reviews': '150+',
      'imagePath': 'assets/Pizza House.jpg',
      'minOrder': 'PKR 249 minimum',
      'cuisine': 'Pakistani',
      'time': '20-40 min',
      'discount': '',
      'deliveryType': 'Free Delivery',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE1E2E5),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 130,
              backgroundColor: Color(0xFFFF2D55),
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu_sharp, size: 30),
                color: Colors.white,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "your location or addres will be here....",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ],
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Stack(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 25,
                      child: Container(
                        height: 16,
                        width: 15,
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            '1',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFFF2D55),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 18),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search for shops & restaurants",
                            prefixIcon: Icon(CupertinoIcons.search),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
