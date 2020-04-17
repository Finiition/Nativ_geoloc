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
                  DropdownButton<String>(
                    items:
                        <String>['High', 'Medium', 'Low'].map((String value) {
                      return new DropdownMenuItem<String>(
                          value: value, child: Text(value));
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ],
              ),
              Container(
                height: 16,
              ),
              Row(
                children: <Widget>[
                  Text('Fréquence'),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        keyboardType: TextInputType.numberWithOptions(
                            signed: false, decimal: false),
                      ),
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
                  Switch(
                    value: true,
                    onChanged: (value) {},
                  )
                ],
              ),
              Container(
                height: 16,
              ),
              Row(
                children: <Widget>[
                  Text('Reverse géocoding'),
                  Switch(
                    value: true,
                    onChanged: (value) {},
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
