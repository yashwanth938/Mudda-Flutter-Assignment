import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ProductSelection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product selection',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(
        title: '',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => {},
        ),
        title: Text(
          "Sell or rent the product",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return HomePage();
                    },
                  ),
                );
              },
              child: Row(
                children: [
                  Icon(Icons.sell),
                  Text("Sell Products"),
                ],
              ),
              style: TextButton.styleFrom(
                primary: Colors.redAccent,
                //onPrimary: Colors.orange[400],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30),
              ),
            ),
          ),
          SizedBox(
            height: 0,
          ),
          Center(
            child: OutlinedButton(
              onPressed: () {},
              child: Row(children: [
                Icon(Icons.sell),
                Text("Rent Products"),
              ]),
              style: TextButton.styleFrom(
                primary: Colors.redAccent,
                //onPrimary: Colors.orange[400],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
