import 'package:flutter/material.dart';
import 'package:flutter_app/app/view/jobs_view.dart';

class BossApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomeState();
  }

}

class HomeState extends State<BossApp> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new TabBarView(children: <Widget>[
        new JobsTab()
      ]),
    );
  }

}