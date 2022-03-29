import 'package:auto_size_text/auto_size_text.dart';
import 'package:exam3/data/namoz_datas/ayollarga_xos_hollar_data.dart';
import 'package:flutter/material.dart';

class AyollargaXosHollar extends StatefulWidget {
  const AyollargaXosHollar({Key? key}) : super(key: key);

  @override
  State<AyollargaXosHollar> createState() => _AyollargaXosHollarState();
}

class _AyollargaXosHollarState extends State<AyollargaXosHollar> {
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
      body: Column(
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
                          AyollargaXos.ayollargaXosHollar[AyollargaXos.index]
                                  ['title']
                              .toString(),
                          style:  TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width * 0.045),
                        )),
                  ],
                ),
              )),
          Expanded(
              flex: 7,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: ListView(
                  padding: const EdgeInsets.only(top: 10.0),
                  children: [
                    AutoSizeText(
                      AyollargaXos.ayollargaXosHollar[AyollargaXos.index]
                              ['text1']
                          .toString(),
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.04),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    AutoSizeText(
                      AyollargaXos.ayollargaXosHollar[AyollargaXos.index]
                              ['text2'] ??
                          ' ',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.04),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    AutoSizeText(
                      AyollargaXos.ayollargaXosHollar[AyollargaXos.index]
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
                      if (AyollargaXos.index > 0) {
                        setState(() {
                          AyollargaXos.index--;
                        });
                      }
                    },
                    child: const Center(child: Icon(Icons.arrow_back_ios)),
                  ),
                  Text(
                    "${AyollargaXos.index + 1}/2",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.width * 0.045),
                  ),
                  FloatingActionButton(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    onPressed: () {
                      if (AyollargaXos.index < 1) {
                        setState(() {
                          AyollargaXos.index++;
                        });
                      }
                    },
                    child: const Center(child: Icon(Icons.arrow_forward_ios)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
