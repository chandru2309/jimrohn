import 'package:flutter/material.dart';

class NewProfile extends StatelessWidget {
  const NewProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green.shade800,
        title: Text(
          'New Project',
          style: TextStyle(color: Colors.white),
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
                  'chandru',
                  style: TextStyle(fontSize: 28, color: Colors.black,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Flutter Developer',
                  style: TextStyle(fontSize: 25,),
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
                padding: const EdgeInsets.all(8.0),
                child: Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,color: Colors.cyan,),
                      title: Text('+91 98866 97866',style: TextStyle(
                          fontSize: 20,color: Colors.black
                      ),),
                    ),
                  ),
              ),
              Card(margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.email,color: Colors.cyan,
                  ),
                  title: Text('chandru@gmail.com',
                    style: TextStyle(
                        fontSize: 20,color: Colors.black
                    ),),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
