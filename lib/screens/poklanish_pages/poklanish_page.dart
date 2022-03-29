import 'package:exam3/data/poklanish_data.dart';
import 'package:exam3/screens/poklanish_pages/info_page.dart';
import 'package:flutter/material.dart';

class Poklanish extends StatelessWidget {
  const Poklanish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('POKLANISH'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            Card(
              color: Colors.white30,
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/tahorat');
                },
                leading: Image.asset('assets/images/water.png'),
                title: Text(DataPoklanish.poklanishUiPage[0]['title']),
              ),
            ),
            Card(
              color: Colors.white30,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InfoPage(
                                poklanish: DataPoklanish.poklanishUiPage[1]['info'],
                              )));
                },
                leading: Image.asset('assets/images/water.png'),
                title: Text(DataPoklanish.poklanishUiPage[1]['title']),
              ),
            ),
            Card(
              color: Colors.white30,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InfoPage(
                                poklanish: DataPoklanish.poklanishUiPage[2]['info'],
                              )));
                },
                leading: Image.asset('assets/images/water.png'),
                title: Text(DataPoklanish.poklanishUiPage[2]['title']),
              ),
            ),Card(
              color: Colors.white30,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InfoPage(
                                poklanish: DataPoklanish.poklanishUiPage[3]['info'],
                              )));
                },
                leading: Image.asset('assets/images/water.png'),
                title: Text(DataPoklanish.poklanishUiPage[3]['title']),
              ),
            ),Card(
              color: Colors.white30,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InfoPage(
                                poklanish: DataPoklanish.poklanishUiPage[4]['info'],
                              )));
                },
                leading: Image.asset('assets/images/water.png'),
                title: Text(DataPoklanish.poklanishUiPage[4]['title']),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
