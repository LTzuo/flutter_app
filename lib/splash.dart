import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/home.dart';


class SplashPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SplashState();
  }
}

class SplashState extends State<SplashPage>{
  
  //私有化变量
  Timer _t;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //const表常量
    _t = new Timer(const Duration(milliseconds: 3500), (){
      try {
        Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(
            builder: (BuildContext context) => new BossApp()), (
            Route route) => route == null);
      }catch(e){

      }
    });
    
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _t.cancel();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      color: new Color.fromARGB(255, 0, 215, 198),
      child: new Padding(padding: const EdgeInsets.only(
        top: 150.0
      ),
      child: new Column(
        children: <Widget>[
          new Text("Boss直聘",
           style: new TextStyle(color: Colors.white,
                                fontSize: 50.0,
                                fontWeight: FontWeight.bold),)
        ],
      ),
      ),

    );
  }

}