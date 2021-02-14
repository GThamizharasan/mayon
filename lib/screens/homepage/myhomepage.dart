import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mayon/services/googleoffices.dart' as googleoffices;
//import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
import 'dart:io';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List data;
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listoffices();

    //final String json_doc;
    //json_doc =
  }

  Future<void> listoffices() async {
    final officeobj = await googleoffices.getGoogleOffices();
    //for ( final i in officeobj.Offices) {
    //  print(i.address);
    //  print(i.name);
    //}
    setState(() {
      // Get the JSON data
      data = officeobj.Offices;
      print(data);
    });
  }

  Widget _buildListView() {
    return ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (context, index) {
          //return _buildImageColumn(data[index]);
          return _buildRow(data[index]);
        });
  }

  Widget _buildRow(dynamic item) {
    return Card(
      child: ListTile(
        title: Text(
          item.address == null ? '' : "Location:" + item.name,
        ),
        subtitle: Text("Address: " + item.address),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white, size: 30),
            tooltip: 'Product Searh',
            onPressed: () {
              //scaffoldKey.currentState.showSnackBar(snackBar);
            },
          ),
          IconButton(
            icon: const Icon(Icons.person, color: Colors.white, size: 30),
            tooltip: 'Show Snackbar',
            onPressed: () {
              //scaffoldKey.currentState.showSnackBar(snackBar);
            },
          ),
          IconButton(
            icon:
                const Icon(Icons.shopping_cart, color: Colors.white, size: 30),
            tooltip: 'Next page',
            onPressed: () {
              //openPage(context);
            },
          ),
        ],
      ),
      body: _buildListView(),
      /*
      Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      */

      drawer: Drawer(
        child: ListView(
            //padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.blueAccent, Colors.greenAccent])),
                child: Row(children: [
                  Container(
                      //fit: BoxFit.contain,
                      padding: EdgeInsets.only(left: 5.0),
                      child: CircleAvatar(
                        radius: 30,
                        child: Image.asset(
                          'images/Kavin.png',
                        ),
                        //backgroundImage:
                        //NetworkImage("http://0.0.0.0:8000/Kavin.png")
                      )),
                  Container(
                    child: DrawerHeader(
                        child: Text(
                      "Hello,\nThamizharasan",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                    )),
                    height: 80,
                  ),
                ]),
              )
            ]),
        // drawerEnableOpenDragGesture: false,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
