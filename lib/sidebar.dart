import 'package:katalog/home.dart';
import 'package:flutter/material.dart';
import 'contact.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});
  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text(
              '',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              'Ngaos novel Gratis',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/ngajionline2.jpg'),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/ngajionline2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.library_books),
            title: const Text('Novel'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_mail),
            title: const Text('Contact Us'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ContactUsPage(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
