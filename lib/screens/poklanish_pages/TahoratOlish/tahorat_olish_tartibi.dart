import 'package:exam3/data/poklanish_data.dart';
import 'package:exam3/screens/poklanish_pages/TahoratOlish/tahorat_olish_page.dart';
import 'package:flutter/material.dart';

class TahoratTartibi extends StatelessWidget {
  const TahoratTartibi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TAHORAT OLISH TARTIBI',
          style: TextStyle(color: Colors.white),
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
                    title: Text(
                        DataPoklanish.tahoratOlish[index]['title'].toString()),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      DataPoklanish.index = index;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TahoratOlish()));
                    },
                  ),
                );
              },
              itemCount: DataPoklanish.tahoratOlish.length,
            ),
          )
        ],
      ),
    );
  }
}
