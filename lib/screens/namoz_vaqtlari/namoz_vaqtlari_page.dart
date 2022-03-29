import 'package:exam3/screens/namoz_vaqtlari/namoz_vaqtlari_widget.dart';
import 'package:flutter/material.dart';

class NamozVaqtlari extends StatefulWidget {
  const NamozVaqtlari({Key? key}) : super(key: key);

  @override
  State<NamozVaqtlari> createState() => _NamozVaqtlariState();
}

class _NamozVaqtlariState extends State<NamozVaqtlari> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NamozVaqtWidget(),
    );
  }
}
