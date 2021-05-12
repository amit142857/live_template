import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    var markers = <Marker>[
      Marker(
        width: 80,
        height: 80,
        point: LatLng(28.4831 , 84.09436),
        builder: (ctx) => Icon(Icons.location_pin, color: Colors.red,)
      ),
      Marker(
          width: 80,
          height: 80,
          point: LatLng(28.4831 , 84.09436),
          builder: (ctx) => Icon(Icons.location_pin, color: Colors.red,)
      ),
      Marker(
          width: 80,
          height: 80,
          point: LatLng(28.4821 , 84.09736),
          builder: (ctx) => Icon(Icons.location_pin, color: Colors.red,)
      ),
      Marker(
          width: 80,
          height: 80,
          point: LatLng(28.4811 , 84.09236),
          builder: (ctx) => Icon(Icons.location_pin, color: Colors.red,)
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Demo_Map"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            children:<Widget> [
              Flexible(
                  child: FlutterMap(
                    options: MapOptions(
                      center: LatLng(28.4831, 84.09436),
                      zoom: 6.0
                    ),
                    layers: [
                      TileLayerOptions(
                        urlTemplate:
                        "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                        subdomains: ['a' , 'b' , 'c']
                      ),
                      MarkerLayerOptions(
                        markers: markers
                      )
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}