import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final String _phoneUrl = 'tel: 01729996899';
final String _emailUrl =
    'mailto:shakilnsu2018@gmail.com?subject=News&body=New%20plugin';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/shakil.jpg'),
              ),
              Container(
                width: double.infinity,
              ),
              Text(
                'Md Shakil Hossain',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontFamily: 'Pacifico'),
              ),
              Text(
                'Flutter devloper',
                style: TextStyle(
                    color: Colors.teal.shade50,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontFamily: 'SourceSansPro'),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                child: Column(
                  children: <Widget>[
                    Card(
                      child: ListTile(
                        onTap: () => _phoneUrlLuncher(),
                        leading: Icon(Icons.phone),
                        title: Text('01729996899'),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        onTap: () => _emailUrlLuncher(),
                        leading: Icon(Icons.email),
                        title: Text('shakilnsu2018@gmail.com'),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_phoneUrlLuncher() async {
  if (await canLaunch(_phoneUrl)) {
    await launch(_phoneUrl);
  } else {
    throw 'Could not launch $_phoneUrl';
  }
}

_emailUrlLuncher() async {
  if (await canLaunch(_emailUrl)) {
    await launch(_emailUrl);
  } else {
    throw 'Could not launch $_emailUrl';
  }
}
