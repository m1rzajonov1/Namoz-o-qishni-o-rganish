import 'package:flutter/material.dart';

class Tasbeh extends StatefulWidget {
  State<Tasbeh> createState() => _TasbehState();
}

class _TasbehState extends State<Tasbeh> {
  int darkTeam = 0;
  int _sanoq = 0, _soni = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            darkTeam.isOdd
                ? 'assets/images/muslim.jpg'
                : 'assets/images/muslim1.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              child: Center(child: zikrlarUchun()),
            ),
            const Spacer(),
            iconFingerprint(context),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          darkTeam += 1;
                        });
                      },
                      backgroundColor:
                          darkTeam.isOdd ? Colors.blue : Colors.black,
                      child: darkTeam % 2 != 0
                          ? const Icon(Icons.dark_mode_sharp,color: Colors.white,)
                          : const Icon(Icons.light_mode,color: Colors.white,),
                    ),
                    Text(
                      '_m1rzajonov_1',
                      style: TextStyle(
                        color: darkTeam.isOdd ? Colors.black : Colors.white70,
                      ),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        _sanoq = 0;
                        _soni = 0;
                        setState(() {});
                      },
                      backgroundColor:
                          darkTeam.isOdd ? Colors.blue : Colors.black,
                      child:const Icon(
                        Icons.restart_alt_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ))
          ],
        )
      ],
    ));
  }

  Container iconFingerprint(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.5,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(250)),
        color: Colors.transparent,
      ),
      child: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 0,
        onPressed: () {
          sanoqlarUchun();
        },
        child: Icon(
          Icons.fingerprint_outlined,
          size: 125,
          color: darkTeam.isOdd ? Colors.blue : Colors.white60,
        ),
      ),
    );
  }

  void sanoqlarUchun() {
    if (_sanoq >= 99) {
      _soni += 1;
      _sanoq = 0;
      _sanoq += 1;
      setState(() {});
    } else {
      _sanoq += 1;
      setState(() {});
    }
  }

  Text zikrlarUchun() {
    if (_sanoq >= 66) {
      return Text(
        """     Allohu Akbar     
            $_soni/$_sanoq""",
        style: TextStyle(
            color: darkTeam.isOdd ? Colors.black : Colors.white70,
            fontSize: 35,
            fontWeight: FontWeight.bold),
      );
    } else if (_sanoq >= 33) {
      return Text(
        """     Alhamdulillah     
            $_soni/$_sanoq""",
        style: TextStyle(
            color: darkTeam.isOdd ? Colors.black : Colors.white70,
            fontSize: 35,
            fontWeight: FontWeight.bold),
      );
    } else if (_sanoq >= 0) {
      return Text(
        """     Subhanolloh     
            $_soni/$_sanoq""",
        style: TextStyle(
            color: darkTeam.isOdd ? Colors.black : Colors.white70,
            fontSize: 35,
            fontWeight: FontWeight.bold),
      );
    } else {
      return const Text('');
    }
  }
}
