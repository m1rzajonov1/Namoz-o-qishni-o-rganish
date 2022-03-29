import 'package:exam3/models/namoz_vaqtlari_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'router/router.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NamozVaqtModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/',
      onGenerateRoute: (settings) => RouterGenerator.generateRoute(settings),
    );
  }
}
