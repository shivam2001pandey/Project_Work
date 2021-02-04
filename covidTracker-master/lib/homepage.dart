import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'cityaffected.dart';
import 'indiatotal.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  Map IndiaData;
  fetchIndiaData() async {
    http.Response response =
        await http.get('https://api.rootnet.in/covid19-in/stats/latest');
    setState(() {
      IndiaData = json.decode(response.body);
    });
  }

  @override
  void initState() {
    fetchIndiaData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Covid-19 Tracker',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Covid Cases In India",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          IndiaData == null
              ? CircularProgressIndicator()
              : IndiaTotal(Mapdata: IndiaData),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Cities  Affected",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color:Colors.red[300],
                  borderRadius:BorderRadius.circular(20),
                ),
                child: Text(
                  "Cases...",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),

              ],
            ),
          ),
IndiaData == null
              ? CircularProgressIndicator()
              : City(Citydata: IndiaData),

          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 13.0, right: 10.0),
              height: 80.0,
              color: Colors.orange[200],
              child: Text(
                "Stay Home,Stay Safe  "
                "Keep Social Distancing to avoid this pandemic Spread",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ))
        ],
      )),
    );
  }
}
