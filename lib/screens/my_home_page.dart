import 'package:auto_size_text/auto_size_text.dart';
import 'package:exam3/data/data.dart';
import 'package:exam3/screens/drawer_page.dart';
import 'package:exam3/service/namoz_vaqt_service.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    ServiceNamoz.getIslamData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Namoz o'qishni o'rganish"),
        elevation: 0,
        actions: [appBarIcon()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return InkWell(
              onLongPress: () =>
                  Text(DataUi.dataUiHomePage[index]["longPress"]),
              onTap: () {
                Navigator.pushNamed(
                    context, DataUi.dataUiHomePage[index]['router']);
              },
              child: Container(
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white54),
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.7,
                  // color: Colors.yellow,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                          flex: 6,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.width * 0.5,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      DataUi.dataUiHomePage[index]['image']),
                                ),
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.transparent),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: AutoSizeText(
                            DataUi.dataUiHomePage[index]['title'],
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  )),
            );
          },
          itemCount: DataUi.dataUiHomePage.length,
        ),
      ),
      drawer: MyDrawer(),
    );
  }

  Padding appBarIcon() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Icon(
        Icons.light_mode,
        size: 33,
      ),
    );
  }
}
