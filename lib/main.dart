import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(40, 50, 40, 80),
                // color: Colors.amberAccent,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage("images/Avatarimg.jpg"),
                    ),
                    SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sunie pham",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "sunieux@gmail.com",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.settings),
                  ],
                ),
              ),

              Container(
                 margin: EdgeInsets.symmetric(horizontal: 20, ),
                padding: EdgeInsets.symmetric(vertical: 30),
                decoration: BoxDecoration(
                  color: Colors.white,

                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 3)],
                ),

                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.location_on_rounded,
                        color: Colors.grey,
                      ),
                      title: Text("Address"),
                      trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                    ),

                    ListTile(
                      leading: Icon(Icons.payment_outlined, color: Colors.grey),
                      title: Text(

                        "Payment Method",
                      ),
                      trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                    ),

                    ListTile(
                      leading: Icon(
                        Icons.receipt_long_sharp,
                        color: Colors.grey,
                      ),
                      title: Text("Voucher"),
                      trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                    ),

                    ListTile(
                      leading: Icon(Icons.favorite, color: Colors.grey),
                      title: Text("My wishlist"),
                      trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                    ),

                    ListTile(
                      leading: Icon(
                        Icons.star_rate_rounded,
                        color: Colors.grey,
                      ),
                      title: Text("Rate this app"),
                      trailing: Icon(Icons.arrow_forward_ios ,size: 18,),
                    ),

                    ListTile(
                      leading: Icon(Icons.logout, color: Colors.grey),
                      title: Text("Log out"),
                      trailing: Icon(Icons.arrow_forward_ios,size: 18,),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          //  لاضافة 4 أيقونات 
          type: BottomNavigationBarType.fixed,

          currentIndex: 3,//لتحديد الايقونة 
          //showSelectedLabels: false,   // إخفاء النص تحت الأيقونة المختارة
          //showUnselectedLabels: false, // إخفاء النص تحت باقي الأيقونات

          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
