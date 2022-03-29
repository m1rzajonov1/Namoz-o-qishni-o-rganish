import 'package:exam3/data/namoz_datas/bomdod_namozi_data.dart';
import 'package:exam3/data/namoz_datas/shom_namozi_data.dart';
import 'package:flutter/material.dart';

class ShomNamoziTartibiAyol extends StatelessWidget {
  const ShomNamoziTartibiAyol({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          BomdodNamoziData.namozUiAyol[4]['title'].toString(),
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
                    title: Text(ShomNamoziData.shomNamoziAyol[index]['title']
                        .toString()),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      ShomNamoziData.index = index;
                      Navigator.pushNamed(context, '/shom_ayol');
                    },
                  ),
                );
              },
              itemCount: ShomNamoziData.shomNamoziAyol.length,
            ),
          )
        ],
      ),
    );
  }
}
