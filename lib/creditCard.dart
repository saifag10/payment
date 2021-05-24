import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:remedium/package.dart';
import 'doctor_sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final _firestore = Firestore.instance;
FirebaseStorage _storage = FirebaseStorage.instance;

class credit_card extends StatefulWidget {
  @override
  _doctor_sign_upState createState() => _doctor_sign_upState();
}

class _doctor_sign_upState extends State<credit_card> {
  @override
  Widget build(BuildContext context) {
    var _value;
    String _uploadedFileURL;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: new PreferredSize(
        child: new Container(
          padding: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: new Padding(
              padding:
                  const EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
              child: Row(
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: CupertinoColors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => package()),
                        );
                      }),
                  Column(
                    children: [
                      Text("Let\'s get you set up!                      ",
                          style: TextStyle(
                              fontSize: 20, color: CupertinoColors.white)),
                      Text(
                          " Fill out the Credit Card information below so we can get you started.",
                          style:
                              TextStyle(fontSize: 13, color: Colors.white70)),
                    ],
                  ),
                ],
              )),
          decoration: new BoxDecoration(color: Color(0xFF202125), boxShadow: [
            new BoxShadow(
              color: Colors.blue,
              blurRadius: 20.0,
              spreadRadius: 1.0,
            ),
          ]),
        ),
        preferredSize: new Size(MediaQuery.of(context).size.width, 80.0),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFF202125),
          ),
          child: ListView(
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                          "Credit Card Information                                        ",
                          style: TextStyle(
                              fontSize: 20, color: CupertinoColors.white)),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(50.0),
                                  ),
                                ),
                                filled: true,
                                hintStyle:
                                    new TextStyle(color: Color(0XFFDCDDE1)),
                                hintText: "First Name",
                                fillColor: Color(0xFF3C4043),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(50.0),
                                  ),
                                ),
                                filled: true,
                                hintStyle:
                                    new TextStyle(color: Color(0XFFDCDDE1)),
                                hintText: "Last Name",
                                fillColor: Color(0xFF3C4043),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(50.0),
                                  ),
                                ),
                                filled: true,
                                hintStyle:
                                    new TextStyle(color: Color(0XFFDCDDE1)),
                                hintText: "Card Number",
                                fillColor: Color(0xFF3C4043),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(50.0),
                                  ),
                                ),
                                filled: true,
                                hintStyle:
                                    new TextStyle(color: Color(0XFFDCDDE1)),
                                hintText: "Security Code",
                                fillColor: Color(0xFF3C4043),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(50.0),
                                  ),
                                ),
                                filled: true,
                                hintStyle:
                                    new TextStyle(color: Color(0XFFDCDDE1)),
                                hintText: "Expiration date",
                                fillColor: Color(0xFF3C4043),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "Rs1,500/month                                       ",
                          style: TextStyle(
                              fontSize: 24, color: CupertinoColors.white)),
                    ),
                  ],
                ),
              ),
              Container(
                child: RaisedButton(
                    color: Color(0XFF3C4043),
                    padding: EdgeInsets.fromLTRB(80, 20, 80, 20),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    child: Text("Start Membership",
                        style: TextStyle(color: Colors.white))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
