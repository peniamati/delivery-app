import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  ListTile listTile(
      BuildContext context, String text, IconData? icon, VoidCallback onTap) {
    return icon == null
        ? ListTile(
            onTap: onTap,
            title: Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          )
        : ListTile(
            onTap: onTap,
            leading: Icon(
              icon,
              color: Color(0xFFFF2D55),
            ),
            title: Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          Builder(builder: (c) {
            return DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFFFF2D55),
                  border: Border.all(
                    color: Color(0xFFFF2D55),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text("D", style: TextStyle(
                          color: Color(0xFFFF2D55),
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),),
                      ),
                    ),
                    Text(
                      "Dear Programmer",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              );
          }),
          Column(
            children: [
              listTile(
                context, 
                "Vouchers & Offers", 
                Icons.local_offer_outlined, 
                () {}
              ),
              listTile(
                context, 
                "Favourites", 
                Icons.favorite_outline_rounded, 
                () {}
              ),
              listTile(
                context, 
                "Orders & reordering", 
                Icons.my_library_books_outlined, 
                () {}
              ),
              listTile(
                context, 
                "Adresses", 
                Icons.location_on_outlined, 
                () {}
              ),
              listTile(
                context, 
                "Payment methods", 
                Icons.payment_rounded, 
                () {}
              ),
              listTile(
                context, 
                "Help center", 
                Icons.help_center_outlined, 
                () {}
              ),
              listTile(
                context, 
                "Invite friends", 
                Icons.wallet_giftcard_outlined, 
                () {}
              ),
              Divider(),
              listTile(
                context, 
                "Settings", 
                null, 
                () {}
              ),
              listTile(
                context, 
                "Terms & conditions / Privacy", 
                null, 
                () {}
              ),
              listTile(
                context, 
                "Logout", 
                null, 
                () {}
              ),
            ],
          )
        ],
      ),
    );
  }
}
