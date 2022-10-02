import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ProductSelection.dart';

class MyApp1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dependent DropDown',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(
        title: 'Selling Crops',
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
  String _selectedCategory = "Farmer";
  var country = {
    'Farmer': 'FRM',
    "Non Farmer": 'NFR',
    'Emplooye': 'EMP',
    'Non Employee': 'NEP'
  };

  List _SubCategory = [];
  CountryDependentDropDown() {
    country.forEach((key, value) {
      _SubCategory.add(key);
    });
  }

  String _selectedState = "";
  var state = {'Weet': 'FRM', "Rice": 'FRM', 'Crops': 'FRM', 'Software': 'EMP'};

  List _states = [];
  StateDependentDropDown(countryShortName) {
    state.forEach((key, value) {
      if (countryShortName == value) {
        _states.add(key);
      }
    });
    _selectedState = _states[0];
  }

  String _selectedCity = "";
  var city = {
    'RamchandraMills': 'Rice',
    "SrikrishnaMills": 'Rice',
    'MuddaMills': 'Crops',
    'LPUCooperate': 'Software',
    'MuddaCooperate': 'Software'
  };

  List _cities = [];
  CityDependentDropDown(stateShortName) {
    city.forEach((key, value) {
      if (stateShortName == value) {
        _cities.add(key);
      }
    });
    _selectedCity = _cities[0];
  }

  String _selectedprice = "";
  var price = {
    'RamchandraMills': '300',
    "SrikrishnaMills": '300',
    'MuddaMills': '300',
    'LPUCooperate': '800',
    'MuddaCooperate': '2000'
  };

  List _prices = [];
  PriceDependentDropDown(stateShortName) {
    /*price.forEach((key, value) {
      if (stateShortName == value) {
        _prices.add(key);
      }
    });*/
    _selectedprice = _prices[0];
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    CountryDependentDropDown();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  return HomePage();
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
        margin: EdgeInsets.all(15), width: 400,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.black, width: 4),
        ),
        child: DropdownButtonHideUnderline(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 23,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Add Details",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              Container(
                width: 400,
                child: DropdownButton(
                  value: _selectedCategory,
                  onChanged: (newValue) {
                    setState(() {
                      _cities = [];
                      _states = [];
                      StateDependentDropDown(country[newValue]);
                      _selectedCategory = "$newValue";
                    });
                  },
                  items: _SubCategory.map((country) {
                    return DropdownMenuItem(
                      child: new Text(country),
                      value: country,
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Sub Category",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )),
              Container(
                width: 400,
                child: DropdownButton(
                  value: _selectedState,
                  onChanged: (newValue) {
                    print(newValue);
                    setState(() {
                      print(newValue);
                      _cities = [];
                      CityDependentDropDown(newValue);

                      _selectedState = "$newValue";
                    });
                  },
                  items: _states.map((state) {
                    return DropdownMenuItem(
                      child: new Text(state),
                      value: state,
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Brand",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )),
              Container(
                width: 400,
                child: DropdownButton(
                  value: _selectedCity,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedCity = "$newValue";
                    });
                  },
                  items: _cities.map((city) {
                    return DropdownMenuItem(
                      child: new Text(city),
                      value: city,
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Variety",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )),
              Container(
                width: 400,
                child: DropdownButton(
                  value: _selectedCity,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedCity = "$newValue";
                    });
                  },
                  items: _cities.map((city) {
                    return DropdownMenuItem(
                      child: new Text(city),
                      value: city,
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "What is The price",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )),
              TextFormField(
                  decoration: InputDecoration(hintText: 'Price'),
                  validator: (value) {}),
              SizedBox(
                height: 12,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Write About Your Product",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )),
              TextFormField(
                  minLines: 2,
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(hintText: 'Description'),
                  validator: (value) {})
            ],
          ),
        ),

        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
