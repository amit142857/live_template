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

  MapController mapController;
  Map<String , LatLng> coords;
  List<Marker> markers;

  @override
  void initState() {
    mapController = MapController();
    
    coords = Map<String, LatLng>();
    coords.putIfAbsent("Pokhara", () => LatLng(28.1831 , 84.09436));
    coords.putIfAbsent("Point 2", () => LatLng(28.8831 , 84.49436));
    coords.putIfAbsent("Point 3", () => LatLng(29.4831 , 85.09436));


    // ignore: deprecated_member_use
    markers = List<Marker>();

    for(int i = 0 ; i < coords.length; i++ ){
      markers.add(
        Marker(
          width: 80,
          height: 80,
          point: coords.values.elementAt(i),
          builder: (ctx) => Icon(Icons.pin_drop, color: Colors.red)
        )
      );
    }
  }

  void _showCoord(int index){
    mapController.move(coords.values.elementAt(index), 10.0);
  }

  List<Widget> _makeButtons() {
    // ignore: deprecated_member_use
    List<Widget> list = List<Widget>();
    
    for (int i=0; i<coords.length; i++){
     // ignore: deprecated_member_use
     list.add(RaisedButton(onPressed:() => _showCoord(i) , child: Text(coords.keys.elementAt(i)),));
    }
    return list;
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
              Row(
                children: _makeButtons(),
              ),
              Flexible(
                  child: FlutterMap(
                    mapController: mapController,
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