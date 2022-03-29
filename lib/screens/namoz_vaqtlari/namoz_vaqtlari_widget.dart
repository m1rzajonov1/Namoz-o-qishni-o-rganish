import 'package:auto_size_text/auto_size_text.dart';
import 'package:exam3/service/namoz_vaqt_service.dart';
import 'package:flutter/material.dart';

class NamozVaqtWidget extends StatefulWidget {
  const NamozVaqtWidget({Key? key}) : super(key: key);

  @override
  _NamozVaqtWidgetState createState() => _NamozVaqtWidgetState();
}

class _NamozVaqtWidgetState extends State<NamozVaqtWidget> {
  int day = DateTime.now().day;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AutoSizeText('Namoz Vaqtlari'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/muslim.jpg',
                  fit: BoxFit.cover,
                )),
            Expanded(
              flex: 11,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return index + 2 > day
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/muslim1.jpg'),
                                    fit: BoxFit.cover)),
                            height: MediaQuery.of(context).size.height * 0.44,
                            width: MediaQuery.of(context).size.height * 0.4,
                            child: Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    "${index + 1}-${ServiceNamoz.box!.getAt(index)['date']['gregorian']['month']['en']}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.05),
                                  ),
                                  ListTile(
                                    title: const AutoSizeText("Tong"),
                                    trailing: AutoSizeText(
                                        "${ServiceNamoz.box!.getAt(index)['timings']['Fajr']}"),
                                  ),
                                  ListTile(
                                    title: const AutoSizeText("Quyosh"),
                                    trailing: AutoSizeText(
                                        "${ServiceNamoz.box!.getAt(index)['timings']['Sunrise']}"),
                                  ),
                                  ListTile(
                                    title: const AutoSizeText("Peshin"),
                                    trailing: AutoSizeText(
                                        "${ServiceNamoz.box!.getAt(index)['timings']['Dhuhr']}"),
                                  ),
                                  ListTile(
                                    title: const AutoSizeText("Asr"),
                                    trailing: AutoSizeText(
                                        "${ServiceNamoz.box!.getAt(index)['timings']['Asr']}"),
                                  ),
                                  ListTile(
                                    title: const AutoSizeText("Shom"),
                                    trailing: AutoSizeText(
                                        "${ServiceNamoz.box!.getAt(index)['timings']['Sunset']}"),
                                  ),
                                  ListTile(
                                    title: const AutoSizeText("Xufton"),
                                    trailing: AutoSizeText(
                                        "${ServiceNamoz.box!.getAt(index)['timings']['Isha']}"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      : const Center();
                },
                itemCount: ServiceNamoz.datas!.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
