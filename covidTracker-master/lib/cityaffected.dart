import'package:flutter/material.dart';

import 'details.dart';

class City extends StatelessWidget{
  final Citydata;

  const City({Key key, this.Citydata}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemBuilder: (context,index)
    {
      return Container(
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(10),
          border:Border.all(color:Colors.red,width:3.0),
        ),
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(10),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(Citydata['data']['regional'][index]['loc'],style:TextStyle(fontWeight:FontWeight.bold)),
            GestureDetector(
              onTap:(){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Details(Citydata['data']['regional'][index]['loc'].toString(),
                    Citydata['data']['regional'][index]['discharged'].toString(),
                    Citydata['data']['regional'][index]['deaths'].toString(),
                    Citydata['data']['regional'][index]['totalConfirmed'].toString(),
                    Citydata['data']['regional'][index]['confirmedCasesForeign'].toString()
                    ,Citydata['data']['regional'][index]['confirmedCasesIndian'].toString());
                  }),);
              },
              child: Text('View',style:TextStyle(color:Colors.blue[200],fontSize:16.0,fontWeight:FontWeight.bold))),
          ],
        )
      );
    },
    itemCount: 35,) ;
  }

}