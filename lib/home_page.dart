// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Container(
            height: 130,
            color: Colors.greenAccent,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'User id: data',
                  style: TextStyle(fontSize: 18),
                ),
                // ignore: prefer_const_constructors
                Text(
                  'Id: data',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Title: data',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Body: data',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          );
        });
  }
/////////////////////////////////////////////////future method ahir log api data fetch

  
}
