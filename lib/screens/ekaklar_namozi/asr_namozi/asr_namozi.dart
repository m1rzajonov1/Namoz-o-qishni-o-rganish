import 'package:auto_size_text/auto_size_text.dart';
import 'package:exam3/data/namoz_datas/asr_namozi_data.dart';
import 'package:flutter/material.dart';

class AsrNamoziErkak extends StatefulWidget {
  const AsrNamoziErkak({Key? key}) : super(key: key);

  @override
  State<AsrNamoziErkak> createState() => _AsrNamoziErkakState();
}

class _AsrNamoziErkakState extends State<AsrNamoziErkak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AsrNamoziData.asrNamozi[AsrNamoziData.index]['title']
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
                      AsrNamoziData.asrNamozi[AsrNamoziData.index]
                              ['text1']
                          .toString(),
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.04),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    AsrNamoziData.asrNamozi[AsrNamoziData.index]
                                ['image']
                            .toString()
                            .isNotEmpty
                        ? SizedBox(
                            height: MediaQuery.of(context).size.height * 0.4,
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset(AsrNamoziData.asrNamozi[AsrNamoziData.index]['image']
                                .toString()))
                        : const Text(' '),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    AutoSizeText(
                      AsrNamoziData.asrNamozi[AsrNamoziData.index]
                              ['text2'] ??
                          ' ',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.04),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    AutoSizeText(
                      AsrNamoziData.asrNamozi[AsrNamoziData.index]
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
                          if (AsrNamoziData.index > 0) {
                            setState(() {
                              AsrNamoziData.index--;
                            });
                          }
                        },
                        child: const Center(child: Icon(Icons.arrow_back_ios)),
                      ),
                      Text(
                        "${AsrNamoziData.index + 1}/31",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.045),
                      ),
                      FloatingActionButton(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        onPressed: () {
                          if (AsrNamoziData.index < 30) {
                            setState(() {
                              AsrNamoziData.index++;
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
