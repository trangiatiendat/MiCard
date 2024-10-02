import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage('images/dat.png'),
            ),
            Text('Tran Gia Tien Dat',
              style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold ,
                color: Colors.black, fontFamily: 'Pacifico',),
            ),
            SizedBox(
              height: 20.0,
              child: Divider(
                color: Colors.grey.shade700,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 20.0,horizontal: 50.0),

              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child:Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.call,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text('0346711625',key: Key('phoneNumber'),),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 2.0,horizontal: 50.0),

              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text('tgtd2k3@gmail.com'),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              child: Text('Click'),
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
              },),

          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      backgroundColor: Colors.white,
      body:Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('go back'),
        ),
      ),
    );
  }
}