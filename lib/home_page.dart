// ignore_for_file: prefer_const_constructors



import 'dart:convert';

import 'package:apiapp/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Welcome> welcompost = [];
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
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
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'User id: ${welcompost[index].userId}',
                        style: TextStyle(fontSize: 18),
                      ),
                      // ignore:
                      Text(
                        'Id:${welcompost[index].id}',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Title:${welcompost[index].title}',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Body: ${welcompost[index].body}',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                );
              });
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

/////////////////////////////////////////////////future method ahir log api data fetch
  Future<List<Welcome>> getData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

        var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map<String, double> index in data) {
        welcompost.add(Welcome.fromJson(index));
      }
      return welcompost;
    } else {
      return welcompost;
    }
  }
}
