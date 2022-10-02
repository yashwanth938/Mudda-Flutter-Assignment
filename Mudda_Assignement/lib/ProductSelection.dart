import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'FormFill.dart';
import 'main.dart';

class HomePage extends StatefulWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product selection',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final style = TextStyle(fontSize: 62, fontWeight: FontWeight.bold);
  final List<String> _listItem = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.jpg',
    'assets/images/4.png',
    'assets/images/5.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return MyApp();
                },
              ),
            );
          },
        ),
        title: Text(
          "What do you want to sell",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              margin: EdgeInsets.all(20),
              color: Colors.grey[400],
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: AssetImage("assets/images/1.png"),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return MyApp1();
                            },
                          ),
                        );
                      },
                    ),
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    'All Crops',
                    style: TextStyle(
                      fontFamily: "Quicksand",
                      fontSize: 25,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              margin: EdgeInsets.all(20),
              color: Colors.grey[400],
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: AssetImage("assets/images/2.1.png"),
                    child: InkWell(
                      onTap: () {},
                    ),
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    'Animals',
                    style: TextStyle(
                      fontFamily: "Quicksand",
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              margin: EdgeInsets.all(20),
              color: Colors.grey[400],
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: AssetImage("assets/images/3.jpg"),
                    child: InkWell(
                      onTap: () {},
                    ),
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    'Agri Inputs',
                    style: TextStyle(
                      fontFamily: "Quicksand",
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              margin: EdgeInsets.all(20),
              color: Colors.grey[400],
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: AssetImage("assets/images/4.png"),
                    child: InkWell(
                      onTap: () {},
                    ),
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    'Seeds',
                    style: TextStyle(
                      fontFamily: "Quicksand",
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              margin: EdgeInsets.all(20),
              color: Colors.grey[400],
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: AssetImage("assets/images/5.png"),
                    child: InkWell(
                      onTap: () {},
                    ),
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    'Equipments',
                    style: TextStyle(
                      fontFamily: "Quicksand",
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
