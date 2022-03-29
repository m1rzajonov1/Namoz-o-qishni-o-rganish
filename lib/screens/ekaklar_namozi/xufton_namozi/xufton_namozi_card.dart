import 'package:exam3/data/namoz_datas/bomdod_namozi_data.dart';
import 'package:exam3/data/namoz_datas/xufton_namozi_data.dart';
import 'package:flutter/material.dart';

class XuftonNamoziTartibi extends StatelessWidget {
  const XuftonNamoziTartibi({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          BomdodNamoziData.namozUi[4]['title'].toString(),
          style: const TextStyle(color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(XuftonNamoziData.xuftonNamozi[index]['title']
                        .toString()),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      XuftonNamoziData.index = index;
                      Navigator.pushNamed(context, '/xufton_erkak');
                    },
                  ),
                );
              },
              itemCount: XuftonNamoziData.xuftonNamozi.length,
            ),
          )
        ],
      ),
    );
  }
}
