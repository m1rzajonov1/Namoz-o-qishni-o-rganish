import 'dart:io';
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class ServiceNamoz {
  static List? datas = [];

  static Future getIslamData() async {
    await openBox();
    Response res;
    try {
      int month = DateTime.now().month;
      int year = DateTime.now().year;
      res = await Dio().get(
          "https://api.aladhan.com/v1/calendarByCity?city=Tashkent&country=Uzbekistan&method=0&month=$month&year=$year&school=1");
      await putIslamData(res.data);
    } catch (e) {
      print("XATO: $e");
    }

    List myData = box!.toMap().values.toList();
    if (myData.isEmpty) {
      datas!.add("nodata");
    } else {
      datas = myData;
    }

    return true;
  }

  static Box? box;
  static Future openBox() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocDir.path);
    box = await Hive.openBox("datam");
  }

  static putIslamData(var data) async {
    await box!.clear();
    for (var d in data["data"]) {
      box!.add(d);
    }
  }
}
