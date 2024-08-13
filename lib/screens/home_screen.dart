import 'package:delivery_app/widgets/my_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      'name': 'Subway',
      'rating': '4.0',
      'reviews': '50+',
      'imagePath': 'assets/subway.jpg',
      'minOrder': 'PKR 199 minimum',
      'cuisine': 'Pakistani',
      'time': '5-20 min',
      'discount': '15% off',
      'deliveryType': 'Free Delivery',
    },
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

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xFFE1E2E5),
      drawer: MyDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 130,
            backgroundColor: Color(0xFFFF2D55),
            leading: IconButton(
              onPressed: () => _scaffoldKey.currentState?.openDrawer(),
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
                          prefixIcon: Icon(
                            CupertinoIcons.search,
                            size: 30,
                            color: Colors.black54,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: StaggeredGrid.count(
                    crossAxisCount: 4,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    children: [
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 3.1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width: 0.5,
                              color: Colors.black26,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 15,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      items[0]['title']!,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      items[0]['subtitle']!,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Image.asset(
                                  items[0]['imagePath']!,
                                  fit: BoxFit.cover,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2.05,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width: 0.5,
                              color: Colors.black26,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 15,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      items[1]['title']!,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      items[1]['subtitle']!,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Image.asset(
                                    items[1]['imagePath']!,
                                    fit: BoxFit.cover,
                                    height: 100,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.05,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width: 0.5,
                              color: Colors.black26,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      items[2]['title']!,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      items[2]['subtitle']!,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Image.asset(
                                    items[2]['imagePath']!,
                                    fit: BoxFit.cover,
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.05,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width: 0.5,
                              color: Colors.black26,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      items[3]['title']!,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      items[3]['subtitle']!,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Image.asset(
                                    items[3]['imagePath']!,
                                    fit: BoxFit.cover,
                                    height: 65,
                                    width: 65,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.05,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width: 0.5,
                              color: Colors.black26,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      items[4]['title']!,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      items[4]['subtitle']!,
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Image.asset(
                                    items[4]['imagePath']!,
                                    fit: BoxFit.cover,
                                    height: 65,
                                    width: 65,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Free Delivery",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 240,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: restaurants.length,
                                itemBuilder: (context, index) {
                                  return _buildRestaurantItem(
                                      restaurants[index]);
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildRestaurantItem(Map<String, dynamic> restaurants) {
    return Container(
      width: 260,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: Image.asset(
                  restaurants['imagePath']!,
                  height: 140,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (restaurants['discount'].isNotEmpty)
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFFF2D55),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        child: Text(
                          restaurants['discount'],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    Container(
                      margin: restaurants['discount'].isNotEmpty
                          ? EdgeInsets.only(top: 5)
                          : EdgeInsets.only(),
                      padding: EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFFF2D55),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: Text(
                        restaurants['deliveryType'],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      restaurants['name'],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        SizedBox(width: 4),
                        Text(
                          restaurants['rating'],
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: 2),
                        Text(
                          '(${restaurants['reviews']})',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  '${restaurants['minOrder']} - ${restaurants['cuisine']}',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.access_time, color: Colors.black, size: 16),
                    SizedBox(width: 4),
                    Text(
                      restaurants['time'],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 15),
                    Icon(Icons.delivery_dining_rounded,
                        color: Color(0xFFFF2D55), size: 16),
                    SizedBox(width: 5),
                    Text(
                      restaurants['deliveryType'],
                      style: TextStyle(
                        color: Color(0xFFFF2D55),
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
