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

    List<LatLng> points;
    MapController mapCOntroller;
    List<Marker> markers;


    @override
  void initState() {
    super.initState();

    mapCOntroller = MapController();
    // ignore: deprecated_member_use
    points = List<LatLng>();

    points.add( LatLng(28.1831 , 84.09436));
    points.add( LatLng(28.8831 , 84.49436));
    points.add( LatLng(29.4831 , 85.09436));

    // ignore: deprecated_member_use
    markers = List<Marker>();

    for(int i = 0; i < points.length; i++){
      //this whole thing makes dynamic buttons
    markers.add(Marker(
      width: 80,
      height: 80,
      point: points.elementAt(i),
      builder: (ctx) => Icon(Icons.add_location, color: Colors.red)
    ));
    }
    }

  @override
  Widget build(BuildContext context) {

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
                    mapController: mapCOntroller,
                    options: MapOptions(
                      center: LatLng(28.4831, 84.09436),
                      zoom: 6.0
                    ),
                    layers: [
                      TileLayerOptions(
                        urlTemplate:
                        "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                        subdomains: ['a' , 'b' , 'c'],
                      ),
                      MarkerLayerOptions(
                        markers: markers
                      ),
                      PolylineLayerOptions(
                        polylines: [
                          Polyline(
                            points: points,
                            strokeWidth: 4,
                            color: Colors.green
                          )
                        ]
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