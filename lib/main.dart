import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/single_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    var hp = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          Badge(
            badgeColor: Colors.white,
            shape: BadgeShape.square,
            position: BadgePosition.bottomRight(),
            badgeContent: Text('0'),
            child: IconButton(
              padding: EdgeInsets.all(0.00),
              icon: Icon(Icons.shopping_cart),
              onPressed: ()
              {

              },
            ),
          )
        ],
      ),
      body: Center(
        child: Container
          (
          height: hp,
          child: ListView(
              children: <Widget>[
                SingleItem(),
                SingleItem(),
                SingleItem(),
              ],
          ),
        ),
      )
    );
  }
}
