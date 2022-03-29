import 'package:auto_size_text/auto_size_text.dart';
import 'package:exam3/data/namoz_datas/shom_namozi_data.dart';
import 'package:flutter/material.dart';

class ShomNamoziAyol extends StatefulWidget {
  const ShomNamoziAyol({Key? key}) : super(key: key);

  @override
  State<ShomNamoziAyol> createState() => _ShomNamoziAyolState();
}

class _ShomNamoziAyolState extends State<ShomNamoziAyol> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ShomNamoziData.shomNamoziAyol[ShomNamoziData.index]['title']
              .toString(),
          style: const TextStyle(color: Colors.white),
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              child: const Icon(
                Icons.home,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: ListView(
                  padding: const EdgeInsets.only(top: 10.0),
                  children: [
                    AutoSizeText(
                      ShomNamoziData.shomNamoziAyol[ShomNamoziData.index]
                              ['text1']
                          .toString(),
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.04),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    ShomNamoziData.shomNamoziAyol[ShomNamoziData.index]
                                ['image']
                            .toString()
                            .isNotEmpty
                        ? SizedBox(
                            height: MediaQuery.of(context).size.height * 0.4,
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset(ShomNamoziData.shomNamoziAyol[ShomNamoziData.index]['image']
                                .toString()))
                        : const Text(' '),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    AutoSizeText(
                      ShomNamoziData.shomNamoziAyol[ShomNamoziData.index]
                              ['text2'] ??
                          ' ',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.04),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    AutoSizeText(
                      ShomNamoziData.shomNamoziAyol[ShomNamoziData.index]
                              ['text3'] ??
                          ' ',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.04),
                    ),
                  ],
                ),
              )),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width,
                color: Colors.cyan,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FloatingActionButton(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        onPressed: () {
                          if (ShomNamoziData.index > 0) {
                            setState(() {
                              ShomNamoziData.index--;
                            });
                          }
                        },
                        child: const Center(child: Icon(Icons.arrow_back_ios)),
                      ),
                      Text(
                        "${ShomNamoziData.index + 1}/24",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.045),
                      ),
                      FloatingActionButton(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        onPressed: () {
                          if (ShomNamoziData.index < 23) {
                            setState(() {
                              ShomNamoziData.index++;
                            });
                          }
                        },
                        child:
                            const Center(child: Icon(Icons.arrow_forward_ios)),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
