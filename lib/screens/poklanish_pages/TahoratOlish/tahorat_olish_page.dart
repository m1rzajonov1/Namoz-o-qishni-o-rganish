import 'package:auto_size_text/auto_size_text.dart';
import 'package:exam3/data/poklanish_data.dart';
import 'package:flutter/material.dart';

class TahoratOlish extends StatefulWidget {
  const TahoratOlish({Key? key}) : super(key: key);

  @override
  State<TahoratOlish> createState() => _TahoratOlishState();
}

class _TahoratOlishState extends State<TahoratOlish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Positioned(
                            top: 35,
                            left: 15,
                            child: AutoSizeText(
                              DataPoklanish.tahoratOlish[DataPoklanish.index]
                                      ['title']
                                  .toString(),
                              style: const TextStyle(color: Colors.white),
                            )),
                      ],
                    ),
                  )),
              Expanded(
                flex: 4,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(DataPoklanish
                      .tahoratOlish[DataPoklanish.index]['image']
                      .toString()),
                ),
              ),
              Expanded(
                  flex: 7,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: ListView(
                      padding: const EdgeInsets.only(top: 10.0),
                      children: [
                        AutoSizeText(
                          DataPoklanish.tahoratOlish[DataPoklanish.index]
                                  ['text1']
                              .toString(),
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                        AutoSizeText(
                          DataPoklanish.tahoratOlish[DataPoklanish.index]
                                  ['text2'] ??
                              ' ',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                        AutoSizeText(
                          DataPoklanish.tahoratOlish[DataPoklanish.index]
                                  ['text3'] ??
                              ' ',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04),
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
                          if (DataPoklanish.index > 0) {
                            setState(() {
                              DataPoklanish.index--;
                            });
                          }
                        },
                        child: const Center(child: Icon(Icons.arrow_back_ios)),
                      ),
                      Text(
                        "${DataPoklanish.index + 1}/9",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width * 0.045),
                      ),
                      FloatingActionButton(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        onPressed: () {
                          if (DataPoklanish.index < 8) {
                            setState(() {
                              DataPoklanish.index++;
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
