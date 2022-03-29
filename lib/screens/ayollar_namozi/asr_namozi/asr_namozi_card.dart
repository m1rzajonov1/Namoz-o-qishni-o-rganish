import 'package:exam3/data/namoz_datas/asr_namozi_data.dart';
import 'package:exam3/data/namoz_datas/bomdod_namozi_data.dart';
import 'package:flutter/material.dart';

class AsrNamoziTartibiAyol extends StatelessWidget {
  const AsrNamoziTartibiAyol({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          BomdodNamoziData.namozUiAyol[3]['title'].toString(),
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
                    title: Text(AsrNamoziData.asrNamoziAyol[index]['title']
                        .toString()),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      AsrNamoziData.index = index;
                      Navigator.pushNamed(context, '/asr_ayol');
                    },
                  ),
                );
              },
              itemCount: AsrNamoziData.asrNamoziAyol.length,
            ),
          )
        ],
      ),
    );
  }
}
