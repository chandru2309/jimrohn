import 'package:flutter/material.dart';

import 'navigation_drawer.dart';

class Subi extends StatelessWidget {
  const Subi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navigate(),
      appBar: AppBar(
        backgroundColor: Color(0xFF9DD1DF),
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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("images/tidy.png"),
                        radius: 50,
                      ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Tide Life India Pvt Ltd',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  ],

                  ),
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
                    color: Color(0xFF9DD1DF),
                    child: ListTile(
                      leading: Icon(Icons.call,color: Colors.black,),
                      title: Text('+91 683668245',style: TextStyle(
                          fontSize: 20,color: Colors.black
                      ),),),),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    color: Color(0xFF9DD1DF),
                    child: ListTile(
                      leading: Icon(Icons.email,color: Colors.black),
                      title: Text('tidylifeindia@gmail.com',style: TextStyle(
                          fontSize: 20,color: Colors.black
                      ),),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    color: Color(0xFF9DD1DF),
                    child: ListTile(
                      leading: Icon(Icons.location_city,color: Colors.black,),
                      title: Text('No.A3,Mahalakshmi Flat,\nSivagami Street,\nNew Perunagalathur.\nChennai-600 026 ',style: TextStyle(
                          fontSize: 20,color: Colors.black
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
