import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  Map<String, String>? poklanish;

  InfoPage({Key? key, this.poklanish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(poklanish!['title'].toString()),
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
                        child: Text(
                          poklanish!['title'].toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05),
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
                      poklanish!['text1'].toString(),
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.04),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    AutoSizeText(
                      poklanish!['text2'] ?? ' ',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.04),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    AutoSizeText(
                      poklanish!['text3'] ?? ' ',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.04),
                    ),
                  ],
                ),
              )),
          
        ],
      ),
    );
  }
}
