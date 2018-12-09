import 'package:flutter/material.dart';
import 'package:final_app/testing.dart' as testing;
import 'package:final_app/Directory.dart' as  directory;
import 'package:final_app/Social.dart' as social;
import 'package:final_app/SLCM.dart' as slcm;
import 'package:final_app/Alerts.dart' as alert;

class MyHomePage extends StatefulWidget{ 
    @override
    HomePageState createState(){
      return new HomePageState();
    }
}

class HomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  TabController tabController;

  @override
  void initState(){
    super.initState();
    tabController = new TabController(vsync: this, length: 5);
  }  

  @override
  void dispose(){
    tabController.dispose();
    super.dispose();
  }

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          bottom: TabBar(
            controller: tabController,
           // isScrollable: true,
            tabs: <Tab>[
              new Tab(
                text: "Home",
                icon: Icon(Icons.home),
              ),
              new Tab(
                text: "Directory",
                icon: Icon(Icons.chrome_reader_mode),
              ),
              new Tab(
                text: "SLCM",
                icon: Icon(Icons.person_pin_circle),
              ),
              new Tab(
                text: "Social",
                icon: Icon(Icons.group),
              ),
              new Tab(
                text: "Alerts",
                icon: Icon(Icons.error),
              )
            ]
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: <Widget>[
            new directory.Directory(),
            new testing.Test(),
            new slcm.Test(),
            new social.Test(),
            new alert.Test()
          ],
        ),
      );
    }
}