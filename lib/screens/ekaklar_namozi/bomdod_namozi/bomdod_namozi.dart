import 'package:auto_size_text/auto_size_text.dart';
import 'package:exam3/data/namoz_datas/bomdod_namozi_data.dart';
import 'package:flutter/material.dart';

class BomdodNamoziErkak extends StatefulWidget {
  const BomdodNamoziErkak({Key? key}) : super(key: key);

  @override
  State<BomdodNamoziErkak> createState() => _BomdodNamoziErkakState();
}

class _BomdodNamoziErkakState extends State<BomdodNamoziErkak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          BomdodNamoziData.bomdodNamozi[BomdodNamoziData.index]['title']
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
                      BomdodNamoziData.bomdodNamozi[BomdodNamoziData.index]
                              ['text1']
                          .toString(),
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.04),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    BomdodNamoziData.bomdodNamozi[BomdodNamoziData.index]
                                ['image']
                            .toString()
                            .isNotEmpty
                        ? SizedBox(
                            height: MediaQuery.of(context).size.height * 0.4,
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset(BomdodNamoziData
                                .bomdodNamozi[BomdodNamoziData.index]['image']
                                .toString()))
                        : const Text(' '),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    AutoSizeText(
                      BomdodNamoziData.bomdodNamozi[BomdodNamoziData.index]
                              ['text2'] ??
                          ' ',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.04),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    AutoSizeText(
                      BomdodNamoziData.bomdodNamozi[BomdodNamoziData.index]
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
                          if (BomdodNamoziData.index > 0) {
                            setState(() {
                              BomdodNamoziData.index--;
                            });
                          }
                        },
                        child: const Center(child: Icon(Icons.arrow_back_ios)),
                      ),
                      Text(
                        "${BomdodNamoziData.index + 1}/17",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.045),
                      ),
                      FloatingActionButton(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        onPressed: () {
                          if (BomdodNamoziData.index < 16) {
                            setState(() {
                              BomdodNamoziData.index++;
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
