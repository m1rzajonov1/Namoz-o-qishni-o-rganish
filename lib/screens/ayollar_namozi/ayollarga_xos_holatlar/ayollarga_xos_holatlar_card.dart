import 'package:exam3/data/namoz_datas/ayollarga_xos_hollar_data.dart';
import 'package:exam3/screens/ayollar_namozi/ayollarga_xos_holatlar/ayollarga_xos_holatlar_page.dart';
import 'package:flutter/material.dart';

class AyollargaXosHollarTartibi extends StatelessWidget {
  const AyollargaXosHollarTartibi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AYOLLARGA XOS HOLLAR',
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
                    title: Text(AyollargaXos.ayollargaXosHollar[index]['title']
                        .toString()),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      AyollargaXos.index = index;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AyollargaXosHollar()));
                    },
                  ),
                );
              },
              itemCount: AyollargaXos.ayollargaXosHollar.length,
            ),
          )
        ],
      ),
    );
  }
}
