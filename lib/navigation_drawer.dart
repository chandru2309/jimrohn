import 'package:flutter/material.dart';
import 'package:jimrohn/pageview_image.dart';

import 'company_profile.dart';

class Navigate extends StatefulWidget {
  const Navigate({super.key});

  @override
  State<Navigate> createState() => _NavigateState();
}

class _NavigateState extends State<Navigate> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.cyan.shade100,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Jim Rohn',
              style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              'Version 1.0',
              style: TextStyle(fontSize: 15,color: Colors.black),
            ),
            currentAccountPicture: CircleAvatar(radius: 50,backgroundImage: AssetImage('images/jim.jpeg'),),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/background.jpg'),
                  fit: BoxFit.cover,
                )),
          ),
          ListTile(
            title: Text(
              'Company Profile',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Tinos',
                color: Colors.black
              ),
            ),

            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Subi()));
            },
          ),
          Divider(
            height: 0.1,
            thickness: 1,
          ),
          ListTile(
              title: Text('Personal Profile',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tinos',
                  )),
              ),
          Divider(
            height: 0.1,
            thickness: 1,
          ),
          ListTile(
            title: Text('Page View Text',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Tinos',
                )),

          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
            title: Text('Page view image',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Tinos',
                )),

          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}