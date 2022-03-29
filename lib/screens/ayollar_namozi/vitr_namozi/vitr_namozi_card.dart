import 'package:exam3/data/namoz_datas/bomdod_namozi_data.dart';
import 'package:exam3/data/namoz_datas/vitr_namozi_data.dart';
import 'package:flutter/material.dart';

class VitrNamoziTartibiAyol extends StatelessWidget {
  const VitrNamoziTartibiAyol({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          BomdodNamoziData.namozUiAyol[6]['title'].toString(),
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
                    title: Text(VitrNamoziData.vitrNamoziAyol[index]['title']
                        .toString()),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      VitrNamoziData.index = index;
                      Navigator.pushNamed(context, '/vitr_ayol');
                    },
                  ),
                );
              },
              itemCount: VitrNamoziData.vitrNamoziAyol.length,
            ),
          )
        ],
      ),
    );
  }
}
