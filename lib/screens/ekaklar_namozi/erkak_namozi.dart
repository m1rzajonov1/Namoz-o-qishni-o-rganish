import 'package:exam3/data/namoz_datas/bomdod_namozi_data.dart';
import 'package:flutter/material.dart';

class ErkaklarNamozi extends StatelessWidget {
  const ErkaklarNamozi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Erkaklar Namozi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white30,
              child: ListTile(
                onTap: () {
                  if (BomdodNamoziData.namozUi[index]['title'] ==
                      'BOMDOD NAMOZI') {
                    Navigator.pushNamed(context, '/bomdod_tartibi');
                  }else if (BomdodNamoziData.namozUi[index]['title'] ==
                      'PESHIN NAMOZI') {
                    Navigator.pushNamed(context, '/peshin_tartibi');
                  }else if (BomdodNamoziData.namozUi[index]['title'] ==
                      'ASR NAMOZI') {
                    Navigator.pushNamed(context, '/asr_tartibi');
                  }else if (BomdodNamoziData.namozUi[index]['title'] ==
                      'SHOM NAMOZI') {
                    Navigator.pushNamed(context, '/shom_tartibi');
                  }else if (BomdodNamoziData.namozUi[index]['title'] ==
                      'XUFTON NAMOZI') {
                    Navigator.pushNamed(context, '/xufton_tartibi');
                  }else if (BomdodNamoziData.namozUi[index]['title'] ==
                      'VITR NAMOZI') {
                    Navigator.pushNamed(context, '/vitr_tartibi');
                  }else if (BomdodNamoziData.namozUi[index]['title'] ==
                      'QAZO NAMOZLARI') {
                    Navigator.pushNamed(context, '/qazo_namozlari');
                  }
                },
                leading: CircleAvatar(
                    child: Image.asset(
                        BomdodNamoziData.namozUi[index]['image']),
                    backgroundColor: Colors.transparent),
                title: Text(BomdodNamoziData.namozUi[index]['title']),
              ),
            );
          },
          itemCount: BomdodNamoziData.namozUi.length,
        ),
      ),
    );
  }
}
