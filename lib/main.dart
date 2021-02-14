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

import 'package:mayon/screens/homepage/myhomepage.dart';
import 'package:mayon/screens/login/myloginpage.dart';
import 'package:mayon/screens/login/mysigninpage.dart';
import 'package:bloc/bloc.dart';
import 'package:mayon/bloc/login/login_page_bloc.dart';
import 'package:mayon/services/appmetadata.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  //EquatableConfig.stringify = kDebugMode;
  runApp(StartApp());
}

class StartApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppMetaData.apptitle,
      theme: ThemeData(
        buttonTheme: Theme.of(context)
            .buttonTheme
            .copyWith(highlightColor: Colors.deepPurple),
        primarySwatch: Colors.deepPurple,
        //brightness: Brightness.dark,
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
            title: Text(AppMetaData.apptitle,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))),
        body: MyProHomePage(
          title: 'Pro Page',
        )
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
        MaterialPageRoute(builder: (context) => SignInApp()));
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
