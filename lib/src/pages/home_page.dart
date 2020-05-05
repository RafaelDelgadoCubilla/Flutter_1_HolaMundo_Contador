import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
              title: Text('MyApp')
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                  child: Text('Hola Mundo')
              ),
              Center(
                child: Text('${counter}')
              ),
            ],
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 30.0),
              FloatingActionButton(
                child: Icon(Icons.exposure_zero),
                onPressed: inicializar,
              ),
              Expanded(
                child: SizedBox(),
              ),
              FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: suma,
              ),
              FloatingActionButton(
                child: Icon(Icons.arrow_drop_down),
                onPressed: resta,
              ),
            ],
          ),
        )

    );
  }

  void suma() {
    setState(() {
      counter++;
    });
  }
  void resta() {
    setState(() {
      counter--;
    });
  }
  void inicializar() {
    setState(() {
      counter=0;
    });
  }
}