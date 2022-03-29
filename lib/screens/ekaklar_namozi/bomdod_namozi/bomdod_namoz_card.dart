import 'package:exam3/data/namoz_datas/bomdod_namozi_data.dart';
import 'package:flutter/material.dart';

class BomdodNamoziTartibi extends StatelessWidget {
  const BomdodNamoziTartibi({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          BomdodNamoziData.namozUi[0]['title'].toString(),
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
                    title: Text(BomdodNamoziData.bomdodNamozi[index]['title']
                        .toString()),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      BomdodNamoziData.index = index;
                      Navigator.pushNamed(context, '/bomdod_erkak');
                    },
                  ),
                );
              },
              itemCount: BomdodNamoziData.bomdodNamozi.length,
            ),
          )
        ],
      ),
    );
  }
}
