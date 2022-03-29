import 'package:exam3/data/namoz_datas/bomdod_namozi_data.dart';
import 'package:exam3/data/namoz_datas/peshin_namozi_data.dart';
import 'package:flutter/material.dart';

class PeshinNamoziTartibiAyol extends StatelessWidget {
  const PeshinNamoziTartibiAyol({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          BomdodNamoziData.namozUiAyol[2]['title'].toString(),
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
                    title: Text(PeshinNamoziData.peshinNamoziAyol[index]['title']
                        .toString()),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      PeshinNamoziData.index = index;
                      Navigator.pushNamed(context, '/peshin_ayol');
                    },
                  ),
                );
              },
              itemCount: PeshinNamoziData.peshinNamoziAyol.length,
            ),
          )
        ],
      ),
    );
  }
}
