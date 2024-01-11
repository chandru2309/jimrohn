import 'package:flutter/material.dart';

import 'navigation_drawer.dart';

class NewProfile extends StatelessWidget {
  const NewProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
drawer: Navigate(),
      appBar: AppBar(
        backgroundColor: Color(0xFF9DD1DF),
        title: Text(
          'Personal Profile',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/chandru.jpg'),
                radius: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Chandru',
                  style: TextStyle(fontSize: 31, color: Colors.black,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Flutter Developer',
                  style: TextStyle(fontSize: 22,),
                ),
              ),
              SizedBox(
                height: 40,
                width: 250,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(21.0),
                child: Card(
                  color: Color(0xFF9DD1DF),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,color: Colors.black,),
                      title: Text('+91 98866 97866',style: TextStyle(
                          fontSize: 20,color: Colors.black
                      ),),
                    ),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Color(0xFF9DD1DF),
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,color: Colors.black,
                    ),
                    title: Text('chandru@gmail.com',
                      style: TextStyle(
                          fontSize: 20,color: Colors.black
                      ),),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
