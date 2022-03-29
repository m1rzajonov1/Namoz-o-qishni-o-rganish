import 'package:exam3/data/namoz_datas/bomdod_namozi_data.dart';
import 'package:flutter/material.dart';

class AyollarNamozi extends StatelessWidget {
  const AyollarNamozi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ayollar Namozi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white30,
              child: ListTile(
                onTap: () {
                  if (BomdodNamoziData.namozUiAyol[index]['title'] ==
                      'AYOLLARGA XOS HOLATLAR') {
                    Navigator.pushNamed(context, '/ayollarga_xos_tartib');
                  }else if (BomdodNamoziData.namozUiAyol[index]['title'] ==
                      'BOMDOD NAMOZI') {
                    Navigator.pushNamed(context, '/bomdod_tartibi_ayol');
                  }else if (BomdodNamoziData.namozUiAyol[index]['title'] ==
                      'PESHIN NAMOZI') {
                    Navigator.pushNamed(context, '/peshin_tartibi_ayol');
                  }else if (BomdodNamoziData.namozUiAyol[index]['title'] ==
                      'ASR NAMOZI') {
                    Navigator.pushNamed(context, '/asr_tartibi_ayol');
                  }else if (BomdodNamoziData.namozUiAyol[index]['title'] ==
                      'SHOM NAMOZI') {
                    Navigator.pushNamed(context, '/shom_tartibi_ayol');
                  }else if (BomdodNamoziData.namozUiAyol[index]['title'] ==
                      'XUFTON NAMOZI') {
                    Navigator.pushNamed(context, '/xufton_tartibi_ayol');
                  }else if (BomdodNamoziData.namozUiAyol[index]['title'] ==
                      'VITR NAMOZI') {
                    Navigator.pushNamed(context, '/vitr_tartibi_ayol');
                  }else if (BomdodNamoziData.namozUiAyol[index]['title'] ==
                      'QAZO NAMOZLARI') {
                    Navigator.pushNamed(context, '/qazo_namozlari');
                  }
                },
                leading: CircleAvatar(
                    child: Image.asset(
                        BomdodNamoziData.namozUiAyol[index]['image']),
                    backgroundColor: Colors.transparent),
                title: Text(BomdodNamoziData.namozUiAyol[index]['title']),
              ),
            );
          },
          itemCount: BomdodNamoziData.namozUiAyol.length,
        ),
      ),
    );
  }
}
