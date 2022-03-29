import 'package:exam3/data/namoz_datas/asr_namozi_data.dart';
import 'package:exam3/data/namoz_datas/bomdod_namozi_data.dart';
import 'package:flutter/material.dart';

class AsrNamoziTartibi extends StatelessWidget {
  const AsrNamoziTartibi({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          BomdodNamoziData.namozUi[2]['title'].toString(),
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
                    title: Text(AsrNamoziData.asrNamozi[index]['title']
                        .toString()),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      AsrNamoziData.index = index;
                      Navigator.pushNamed(context, '/asr_erkak');
                    },
                  ),
                );
              },
              itemCount: AsrNamoziData.asrNamozi.length,
            ),
          )
        ],
      ),
    );
  }
}
