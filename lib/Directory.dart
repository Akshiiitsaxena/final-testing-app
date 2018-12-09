import 'package:flutter/material.dart';

class Directory extends StatefulWidget{
  @override
  DirectoryState createState() => new DirectoryState();
}

class DirectoryState extends State<Directory> {

  Map<String,String> flights = {
    "United Airways": "+91XXXXXXXX",
    "Fly Emirates" : "+91XXXXXXXX",
    "Jet Airways" : "+91XXXXXXXX",
    "Luftansa" : "+91XXXXXXXX",
    "Air India" : "+91XXXXXXXX",
    "Indigo" : "+91XXXXXXXX",
    "Spice Jet" : "+91XXXXXXXX",
    "Air France" : "+91XXXXXXXX",
    "Go Air" : "+91XXXXXXXX",
  };

  Map<String,String> trains = {
    "Rajdhani" : "+91XXXXXXXX",
    "Janshatabdi" : "+91XXXXXXXX",
    "Gareeb Rath" : "+91XXXXXXXX",
    "ABC Express" : "+91XXXXXXXX",
    "XYZ Express" : "+91XXXXXXXX",
  };

  Map<String,String> food = {
    "Apoorav": "+91XXXXXXXX",
    "Sindhi Mess" : "+91XXXXXXXX",
    "McDonald's": "+91XXXXXXXX",
    "Dominoes": "+91XXXXXXXX",
    "Pizza Hut": "+91XXXXXXXX",
    "Hangout": "+91XXXXXXXX",
    "Eye of the Tiger": "+91XXXXXXXX",
    "Saiba": "+91XXXXXXXX",
    "KFC": "+91XXXXXXXX",
    "Grub Monkeys": "+91XXXXXXXX",
    "Charcoal": "+91XXXXXXXX",
  };

  Map<String,String> emergency = {
    "KMC" : "+91XXXXXXXX",
    "Radha Medicals" : "+91XXXXXXXX",
    "Vijay Medicals": "+91XXXXXXXX",
    "Green Marijuana": "+91XXXXXXXX",
    "Greener Marijuana": "+91XXXXXXXX",
    "Greenest Marijuana": "+91XXXXXXXX",
  };

  Map<String,String> attractions = {
    "Canara Mall" : "+91XXXXXXXX",
    "Khan Market": "+91XXXXXXXX",
    "Flea Market": "+91XXXXXXXX",
    "Sabsi Mandi": "+91XXXXXXXX",
    "Very Big Mall": "+91XXXXXXXX",
  };

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        padding: (EdgeInsets.symmetric(vertical: 20.0, horizontal: 3.0)),
        children: <Widget>[	
          InkWell(
            child: Card(
              elevation: 6.0,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  ListTile(
                      title: Text("Flights", style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),),
                      leading: IconButton(icon: Icon( Icons.flight)),
                      trailing: IconButton(icon: Icon(Icons.arrow_drop_down),
                      //  onPressed: _showBottomSheet2,
                      splashColor: Colors.blueAccent,
                      onTap: new ModalClass(flights,context)._showModal)
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            child: Card(
              elevation: 6.0,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                        "Taxi Services",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold
                        )),
                    leading: IconButton(icon: Icon(Icons.local_taxi)),
                    trailing: IconButton(icon: Icon(Icons.arrow_drop_down),

                    splashColor: Colors.yellowAccent,),
                    onTap: new ModalClass(flights,context)._showModal
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(2.0)),
          InkWell(
            child: Card(
              elevation: 6.0,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "Trains",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold
                      ),),
                    leading: IconButton(icon: Icon(Icons.train)),
                    trailing: IconButton(icon: Icon(Icons.arrow_drop_down),
                    splashColor: Colors.blueAccent,),
                    onTap: new ModalClass(trains,context)._showModal
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(2.0)),
          Padding(padding: EdgeInsets.all(2.0)),
          InkWell(
            child: Card(
              elevation: 6.0,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  ListTile(
                      title: Text("Food", style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),),
                      leading: IconButton(icon: Icon(Icons.local_dining)),
                      trailing: IconButton(icon: Icon(Icons.arrow_drop_down),
                        splashColor: Colors.yellowAccent,),
                      onTap: new ModalClass(food,context)._showModal
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(2.0)),
          InkWell(
            child: Card(
              elevation: 6.0,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  ListTile(
                      title: Text("Miscellaneous", style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),),
                      leading: IconButton(icon: Icon(Icons.local_mall)),
                      trailing: IconButton(icon: Icon(Icons.arrow_drop_down),
                      onTap: new ModalClass(flights,context)._showModal
                  )),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(2.0)),
          InkWell(
            child: Card(
              elevation: 6.0,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  ListTile(
                      title: Text("Emergency", style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),),
                      leading: IconButton(icon: Icon(Icons.local_hospital)),
                      trailing: IconButton(icon: Icon(Icons.arrow_drop_down),
                      onTap: new ModalClass(emergency,context)._showModal)
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(2.0)),
          InkWell(
            child: Card(
              elevation: 6.0,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  ListTile(
                      title: Text("Attractions", style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),),
                      leading: IconButton(icon: Icon(Icons.location_city)),
                      trailing: IconButton(icon: Icon(Icons.arrow_drop_down)),
                      onTap: new ModalClass(attractions,context)._showModal
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(2.0)),
        ],
      ),
    );
  }
}

class ModalClass{

  Map stuffMap;
  BuildContext context;

  ModalClass(Map stuffMap, BuildContext context){
    this.stuffMap = stuffMap;
    this.context = context;
  }

  void _showModal(){
    showModalBottomSheet(
      context: context,
      builder: (build){
        return Container(
          child: Center(
              child: buildGrid(),
          ),
        );
      }
    );
  }

  GridView buildGrid(){

    List<Widget> stuff;
    int i = 0;

    buildSizedBox(String name, String str){
      return new SizedBox(
        width: 175.0,
        height: 60.0,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Text(
                    name,
                    style: TextStyle(
                        fontSize: 17.0
                    )),
                Padding(padding: EdgeInsets.symmetric(
                    vertical: 2.0)),
                Text(
                  str, style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 10.0
                ),)
              ],
              crossAxisAlignment: CrossAxisAlignment
                  .start,
            ),
          ),
        ),
      );
    }

    stuffMap.forEach((key,value) => stuff[i++] = buildSizedBox(key, value));

    return GridView.count(
      padding: EdgeInsets.all(1.0),
      crossAxisCount: 2,
      children: stuff,  
        // stuffMap.forEach((key,value) => buildSizedBox(key, value));
    );
  }

}