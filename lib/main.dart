import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff48416A),
        appBar: AppBar(
          title: Text(
            "A Gredient Button",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              // fontStyle:FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff48416A),
        ),
        body: Center(
            child: GestureDetector(
          onTap: () {
            print("Button Tap");
          },
          child: Container(
            height: 80,
            alignment: Alignment.center,
            width: 250,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.center,
                  tileMode: TileMode.clamp,
                  colors: [
                    Color(0xff8D34B8),
                    Color(0xff6558CE),
                    Color(0xff3683E7)
                  ]),
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50), bottom: Radius.circular(50)),
            ),
            child: Text(
              "Flutter",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
          ),
        )),
      ),
    ),
  );
}
