import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AppHome(),
    );
  }
}

class AppHome extends StatefulWidget {
  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {

  PermissionStatus _permissionstatus;


  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(onLayoutDone);
  }

  void onLayoutDone(Duration timeStamp) async{
    _permissionstatus = await Permission.camera.status;
    setState(() {

    });
  }

  void _askCameraPermission() async {
    if(await Permission.camera.request().isGranted){
      _permissionstatus = await Permission.camera.status;
      setState(() {

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Permission testing'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget> [
            Text("$_permissionstatus" , style: Theme.of(context).textTheme.headline5),
            ElevatedButton(
                child: Text("Request Permission" , style: TextStyle(color: Colors.white , fontSize: 16),),
                onPressed: () => _askCameraPermission(),
            )
          ],
        ),
      ),
    );
  }
}

