import 'package:flutter/material.dart';

import 'navigation_drawer.dart';

class Subi extends StatelessWidget {
  const Subi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navigate(),
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          'Company Profile',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/Subi.jpg"),
                      radius: 50,
                    ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'Subi Software Solution',
                      style: TextStyle(
                          color: Colors.cyan,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
                ],

                ),
                SizedBox(
                  height: 50,
                  width: 310,
                  child: Divider(
                    color: Colors.cyan,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.call,color: Colors.cyan,),
                      title: Text('+91 683668245',style: TextStyle(
                          fontSize: 20,color: Colors.cyan
                      ),),),),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.email,color: Colors.cyan,),
                      title: Text('chandru@gmail.com',style: TextStyle(
                          fontSize: 20,color: Colors.cyan
                      ),),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.location_city,color: Colors.cyan,),
                      title: Text('No.158,Arcot Road,\nVadapalani\nChennai-600 026 ',style: TextStyle(
                          fontSize: 20,color: Colors.cyan
                      ),),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
