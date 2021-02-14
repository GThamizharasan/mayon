import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:mayon/bloc/login/login_page_bloc.dart';
import 'package:mayon/screens/homepage/MyHomePage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayon/services/appmetadata.dart';
import 'package:mayon/screens/login/myloginpage.dart';
import 'package:mayon/widgets/mywidgets.dart';

class SignInApp extends StatefulWidget {
  @override
  _SignInApp createState() => _SignInApp();
}

class _SignInApp extends State<SignInApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text(AppMetaData.apptitle,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))),
        //style: Theme.of(context).textTheme.headline6,
        // )),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 0, top: 50, right: 50),
                  child: Header(AppMetaData.singinheader)),
              Padding(
                  padding: EdgeInsets.only(left: 0, top: 20, right: 50),
                  child: Paragraph(AppMetaData.singindetail)),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 50, right: 50),
                child: SingInStyledButton(
                  child: Row(
                    children: [
                      Icon(Icons.account_circle_rounded),
                      SizedBox(width: 4),
                      Text('Already a Customer? Sign in',
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  onPressed: () async {
                    Navigator.push(
                        context,
                        // MaterialPageRoute(builder: (context) => MyHomePage(title: 'Mayon.in')));
                        MaterialPageRoute(builder: (context) => LoginApp()));
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 50, right: 50),
                child: SingInStyledButton(
                  child: Row(
                    children: [
                      Icon(Icons.account_circle_rounded, size: 25),
                      SizedBox(width: 4),
                      Text('New Customer? Sign up',
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  onPressed: () async {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 50, right: 50),
                child: SingInStyledButton(
                  child: Row(
                    children: [
                      Icon(Icons.arrow_right, size: 30),
                      SizedBox(width: 4),
                      Text('Skip to continue', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  onPressed: () async {},
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 10),
                  child:
                      Text('or Continue with', style: TextStyle(fontSize: 15))),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 50, right: 50),
                child: SingInStyledButton(
                  child: Row(
                    children: [
                      Container(
                          height: 25.0,
                          width: 25.0,
                          child: Image.asset('images/Google.jpg',
                              fit: BoxFit.cover)),
                      SizedBox(width: 4),
                      Text('Sign in with Google',
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  onPressed: () async {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 50, right: 50),
                child: SingInStyledButton(
                  child: Row(
                    children: [
                      Container(
                          height: 25.0,
                          width: 25.0,
                          child: Image.asset('images/Facebook.png',
                              fit: BoxFit.cover)),
                      SizedBox(width: 4),
                      Text('Sign in with Facebook',
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  onPressed: () async {},
                ),
              )
            ],
          ),
        ),
      ),
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
    );
  }
}

class SignInApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text(AppMetaData.apptitle,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))),
        //style: Theme.of(context).textTheme.headline6,
        // )),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 0, top: 50, right: 50),
                  child: Header(AppMetaData.singinheader)),
              Padding(
                  padding: EdgeInsets.only(left: 0, top: 20, right: 50),
                  child: Paragraph(AppMetaData.singindetail)),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 50, right: 50),
                child: SingInStyledButton(
                  child: Row(
                    children: [
                      Icon(Icons.account_circle_rounded),
                      SizedBox(width: 4),
                      Text('Already a Customer? Sign in',
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  onPressed: () async {
                    Navigator.push(
                        context,
                        // MaterialPageRoute(builder: (context) => MyHomePage(title: 'Mayon.in')));
                        MaterialPageRoute(builder: (context) => LoginApp()));
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 50, right: 50),
                child: SingInStyledButton(
                  child: Row(
                    children: [
                      Icon(Icons.account_circle_rounded, size: 25),
                      SizedBox(width: 4),
                      Text('New Customer? Sign up',
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  onPressed: () async {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 50, right: 50),
                child: SingInStyledButton(
                  child: Row(
                    children: [
                      Icon(Icons.arrow_right, size: 30),
                      SizedBox(width: 4),
                      Text('Skip to continue', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  onPressed: () async {},
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 10),
                  child:
                      Text('or Continue with', style: TextStyle(fontSize: 15))),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 50, right: 50),
                child: SingInStyledButton(
                  child: Row(
                    children: [
                      Container(
                          height: 25.0,
                          width: 25.0,
                          child: Image.asset('images/Google.jpg',
                              fit: BoxFit.cover)),
                      SizedBox(width: 4),
                      Text('Sign in with Google',
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  onPressed: () async {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 50, right: 50),
                child: SingInStyledButton(
                  child: Row(
                    children: [
                      Container(
                          height: 25.0,
                          width: 25.0,
                          child: Image.asset('images/Facebook.png',
                              fit: BoxFit.cover)),
                      SizedBox(width: 4),
                      Text('Sign in with Facebook',
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  onPressed: () async {},
                ),
              )
            ],
          ),
        ),
      ),
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
    );
  }
}
