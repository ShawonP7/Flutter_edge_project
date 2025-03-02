import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Page'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to HSTU',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage()),
                );
              },
              child: Text('Go to Homepage'),
            ),
          ],
        ),
      ),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hajee Mohammad Danesh Science and Technology University (HSTU)',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Location: Dinajpur, Bangladesh'),
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Campus Area: 135 acres'),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Students: 11,203'),
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Degrees Offered: Undergraduate, Postgraduate, PhD'),
            ),
            ListTile(
              leading: Icon(Icons.apartment),
              title: Text('Faculties: 9'),
            ),
            ListTile(
              leading: Icon(Icons.public),
              title: Text('Website: hstu.ac.bd'),
              onTap: () {
                // External link button placeholder
              },
            ),
          ],
        ),
      ),


    );
  }
}
