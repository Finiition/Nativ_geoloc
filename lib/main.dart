import 'package:flutter/material.dart';

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
      home: MyHomePage(),
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
  String _selectedPrecision = "High";

  bool _backgroundTask = false;
  bool _reverseGeocoding = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Geoloc"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('Precision'),
                  Spacer(),
                  DropdownButton<String>(
                    value: _selectedPrecision,
                    items:
                        <String>['High', 'Medium', 'Low'].map((String value) {
                      return new DropdownMenuItem<String>(
                          value: value, child: Text(value));
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedPrecision = value;
                      });
                    },
                  ),
                ],
              ),
              Container(
                height: 16,
              ),
              Row(
                children: <Widget>[
                  Text('Fréquence (s)'),
                  Spacer(),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      keyboardType: TextInputType.numberWithOptions(
                          signed: false, decimal: false),
                    ),
                  )
                ],
              ),
              Container(
                height: 16,
              ),
              Row(
                children: <Widget>[
                  Text('Background task'),
                  Spacer(),
                  Switch(
                    value: _backgroundTask,
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        _backgroundTask = value;
                      });
                      print('Change background Task : ' +
                          _backgroundTask.toString());
                    },
                  )
                ],
              ),
              Container(
                height: 16,
              ),
              Row(
                children: <Widget>[
                  Text('Reverse géocoding'),
                  Spacer(),
                  Switch(
                    value: _reverseGeocoding,
                    onChanged: (value) {
                      print(value);
                      setState(() {
                        _reverseGeocoding = value;
                      });
                      print('Change reversecoding : ' +
                          _reverseGeocoding.toString());
                    },
                  )
                ],
              ),
              Container(
                height: 16,
              ),
              FlatButton(
                child: Text(
                  'Start Géolocation',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {},
              )
            ],
          ),
        ));
  }
}
