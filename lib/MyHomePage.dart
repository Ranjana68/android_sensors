import 'package:android_sensors/accelorometer.dart';
import 'package:android_sensors/gyroscope.dart';
import 'package:android_sensors/proximity.dart';
import 'package:android_sensors/shakeDetector.dart';
import 'package:android_sensors/temperature.dart';
import 'package:flutter/material.dart';
import 'package:android_sensors/widgets/size_config.dart';

class MyHomePage extends StatefulWidget {



  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(title: Text('Android Sensors'),
      backgroundColor: Colors.blue,),
      body:
      GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        crossAxisCount: 1,
        childAspectRatio: 3,
        children: <Widget>[
          RaisedButton(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),),
            elevation: 8.0,
            color:Colors.blue[400],
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10,),
                  Icon(Icons.directions_car,size: 50,color: Colors.pink,),
                  SizedBox(height: 10,),

                  Text('Accelerometer',style: TextStyle(fontSize: 20,color: Colors.white),),
                ],
              ),
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Accelerometer()));

            },
          ),
          RaisedButton(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),),
            elevation: 8.0,
            color:Colors.blue[400],
            child: Center(
              child: Column(
                children: <Widget>[
                  //Icon(Icons.offline_bolt,size: SizeConfig.safeBlockVertical* 5,),
                  SizedBox(height: 10,),
                  Icon(Icons.hdr_strong,size: 50,color: Colors.black,),
                  SizedBox(height: 10,),
                  Text('Shake',style: TextStyle(fontSize: 20,color: Colors.white),),
                ],
              ),
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Shake()));

            },
          ),

          RaisedButton(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),),
            elevation: 8.0,
            color:Colors.blue[400],
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10,),
                  Icon(Icons.format_align_right,size: 50,color: Colors.deepOrange,),
                  SizedBox(height: 10,),
                  Text('Proximity',style: TextStyle(fontSize: 20,color: Colors.white),),
                ],
              ),
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Proximity()));

            },
          ),
          RaisedButton(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),),
            elevation: 8.0,
            color:Colors.blue[400],
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10,),
                  Icon(Icons.zoom_out_map,size: 50,color: Colors.lightGreen,),
                  SizedBox(height: 10,),
                  Text('Gyroscope',style: TextStyle(fontSize: 20,color: Colors.white),),
                ],
              ),
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Gyroscope()));

            },
          ),
          RaisedButton(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),),
            elevation: 8.0,
            color:Colors.blue[400],
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10,),
                  Icon(Icons.wb_sunny,size: 50,color: Colors.yellow,),
                  SizedBox(height: 10,),
                  Text('Temperature',style: TextStyle(fontSize: 20,color: Colors.white),),
                ],
              ),
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Temperature()));

            },
          ),

        ],
      ),
    );
  }
}
