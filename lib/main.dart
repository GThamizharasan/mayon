import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mayon/services/googleoffices.dart' as googleoffices;
//import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'package:equatable/equatable.dart';

import 'package:mayon/view/myhomepage.dart';
import 'package:mayon/view/loginpage.dart';

import 'package:bloc/bloc.dart';
import 'package:mayon/bloc/login/login_page_bloc.dart';

void main() {
  //EquatableConfig.stringify = kDebugMode;
  runApp(StartApp());
}

class StartApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Form Validation')),
        body: BlocProvider(
          create: (_) => LoginPageBloc(),
          //child: LoginPage(),
          child: MyProHomePage(
            title: 'Pro Page',
          ),
        ),
      ),
    );
  }
}

class MyProHomePage extends StatefulWidget {
  MyProHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyProHomePageState createState() => _MyProHomePageState();
}

class _MyProHomePageState extends State<MyProHomePage> {
  startTime() async {
    var _duration = Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.push(
        context,
        // MaterialPageRoute(builder: (context) => MyHomePage(title: 'Mayon.in')));
        MaterialPageRoute(builder: (context) => LoginApp()));
  }

  @override
  void initState() {
    super.initState();

    startTime();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Colors.white),
      child: Container(
        color: Colors.black12,
        margin: EdgeInsets.all(30.0),
        width: 250.0,
        height: 250.0,
        child: Image.asset(
          'images/gro.jpg',
        ),
      ),
    );
  }
}
