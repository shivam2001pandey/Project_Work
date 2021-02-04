import'package:flutter/material.dart';

class IndiaTotal extends StatelessWidget{
  final Mapdata;

  const IndiaTotal({Key key, this.Mapdata}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child:GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio:2),
        children: <Widget>[
          panel(
            textColor:Colors.red,
            title:'Total Cases',
            bgColor:Colors.orange[300],
            count:Mapdata['data']['summary']['total'].toString(),
          ),
          panel(
             textColor:Colors.red,
            title:'confirm Cases Indian',
            bgColor:Colors.orange,
             count:Mapdata['data']['summary']['confirmedCasesIndian'].toString(),
          ),
          panel(
             textColor:Colors.red,
            title:'confirm Cases Foreign',
            bgColor:Colors.green[200],
             count:Mapdata['data']['summary']['confirmedCasesForeign'].toString(),
          ),
          panel( textColor:Colors.red,
            title:'Discharged',
            bgColor:Colors.orange[200],
             count:Mapdata['data']['summary']['discharged'].toString(),
          ),
          panel( textColor:Colors.red,
            title:'Deaths',
            bgColor:Colors.blue[200],
            count:Mapdata['data']['summary']['deaths'].toString(),
          ),
          panel( textColor:Colors.yellow,
            title:'Confirm Loc unknown',
            bgColor:Colors.orange,
             count:Mapdata['data']['summary']['confirmedButLocationUnidentified'].toString(),),
        ],
        ),

    );
  }

}

class panel extends StatelessWidget{
 
 final Color textColor;
    final String title;
    final Color bgColor;
    final String count;

  const panel({Key key, this.textColor, this.title, this.bgColor, this.count}) : super(key: key);
   
    
  

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
   
    return Container(
     
      color:bgColor,
      margin: EdgeInsets.all(15.0),
      height:100.0,
      width:width/2,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('$title',style:TextStyle(color:textColor,fontSize: 16,fontWeight: FontWeight.bold),),
          Text('$count',style:TextStyle(color:Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
        ],
      )
    );
  }

}