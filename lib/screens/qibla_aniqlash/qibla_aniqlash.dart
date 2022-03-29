// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:exam3/screens/qibla_aniqlash/loading_indicator.dart';
import 'package:exam3/screens/qibla_aniqlash/qiblah_compass.dart';
import 'package:exam3/screens/qibla_aniqlash/qiblah_maps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';

class QiblaAniqlash extends StatefulWidget {
  const QiblaAniqlash({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<QiblaAniqlash> {
  final _deviceSupport = FlutterQiblah.androidDeviceSensorSupport();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Qibla aniqlash'),
      ),
      backgroundColor: Colors.grey[350],
      body: FutureBuilder(
        future: _deviceSupport,
        builder: (_, AsyncSnapshot<bool?> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
            return LoadingIndicator();
          if (snapshot.hasError)
            return Center(
              child: Text("Error: ${snapshot.error.toString()}"),
            );

          if (snapshot.data!)
            return QiblahCompass();
          else
            return QiblahMaps();
        },
      ),
    );
  }
}
