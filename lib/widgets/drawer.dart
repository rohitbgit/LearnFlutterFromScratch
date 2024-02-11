import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const imgUrl =
        "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8fDA%3D";
    return Drawer(
      backgroundColor: Colors.blueGrey,
      child: ListView(
        children: [
          const DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Rohit"),
                accountEmail: Text("rohit12@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imgUrl),
                ),
              )),
          ListTile(
            leading: Icon(
              Icons.home_work_sharp,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.email_rounded,
              color: Colors.white,
            ),
            title: Text(
              "Email me",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.phone_android_sharp,
              color: Colors.white,
            ),
            title: Text(
              "Contact",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.account_box_rounded,
              color: Colors.white,
            ),
            title: Text(
              "About",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
