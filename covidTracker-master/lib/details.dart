import'package:flutter/material.dart';
class Details extends StatelessWidget {
  String loc;
  String discharged,confirm,foreign,indian,deaths;
  Details(this.loc,this.discharged,this.deaths,this.confirm,this.foreign,this.indian);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Covid-19 Cases"),
          
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(
                top: 20.0, left: 15.0, right: 20.0, bottom: 20.0),
            child: Card(
                
                child: ListView(
                  
                  children: <Widget>[
                    
                    Padding(
                      
                      padding:
            EdgeInsets.only(top: 25.0, left: 85.0, right: 10.0),
                      child: Row(children: <Widget>[
                        Text("$loc",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color:Colors.blue,
                  fontWeight: FontWeight.bold, fontSize: 18.0)),
                      ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 45.0, left: 15.0, right: 5.0),
                      child: Row(children: <Widget>[
                        Text("Total Confirmed Cases :  ",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18.0)),
                        Text("$confirm",
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 18.0)),
                      ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.0, left: 15.0, right: 5.0),
                      child: Row(children: <Widget>[
                        Text("Deaths :  ",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18.0)),
                        Expanded(
              child: Text("$deaths",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0))),
                      ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.0, left: 15.0, right: 5.0),
                      child: Row(children: <Widget>[
                        Text("Discharged:  ",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18.0)),
                        Text("$discharged",
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 18.0)),
                      ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.0, left: 15.0, right: 5.0),
                      child: Row(children: <Widget>[
                        Text("confirmed Cases Foreign:  ",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18.0)),
                        Text("$foreign",
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 18.0)),
                      ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.0, left: 15.0, right: 5.0),
                      child: Row(children: <Widget>[
                        Text("confirmed Cases Indian :  ",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18.0)),
                        Text("$indian",
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 18.0)),
                      ]),
                    ),
                   
                  ],
                ),
              ),
          ),
        ));
  }
}