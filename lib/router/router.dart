import 'package:exam3/data/namoz_datas/ayollarga_xos_hollar_data.dart';
import 'package:exam3/screens/ayollar_namozi/asr_namozi/asr_namozi.dart';
import 'package:exam3/screens/ayollar_namozi/asr_namozi/asr_namozi_card.dart';
import 'package:exam3/screens/ayollar_namozi/ayol_namozi.dart';
import 'package:exam3/screens/ayollar_namozi/ayollarga_xos_holatlar/ayollarga_xos_holatlar_card.dart';
import 'package:exam3/screens/ayollar_namozi/ayollarga_xos_holatlar/ayollarga_xos_holatlar_page.dart';
import 'package:exam3/screens/ayollar_namozi/bomdod_namozi/bomdod_namoz_card.dart';
import 'package:exam3/screens/ayollar_namozi/bomdod_namozi/bomdod_namozi.dart';
import 'package:exam3/screens/ayollar_namozi/peshin_namozi/peshin_namoz_card.dart';
import 'package:exam3/screens/ayollar_namozi/peshin_namozi/peshin_namozi.dart';
import 'package:exam3/screens/ayollar_namozi/qazo_namozlari/qazo_namozlari.dart';
import 'package:exam3/screens/ayollar_namozi/shom_namozi/shom_namozi.dart';
import 'package:exam3/screens/ayollar_namozi/shom_namozi/shom_namozi_card.dart';
import 'package:exam3/screens/ayollar_namozi/vitr_namozi/vitr_namozi.dart';
import 'package:exam3/screens/ayollar_namozi/vitr_namozi/vitr_namozi_card.dart';
import 'package:exam3/screens/ayollar_namozi/xufton_namozi/xufton_namozi.dart';
import 'package:exam3/screens/ayollar_namozi/xufton_namozi/xufton_namozi_card.dart';
import 'package:exam3/screens/ekaklar_namozi/asr_namozi/asr_namozi.dart';
import 'package:exam3/screens/ekaklar_namozi/asr_namozi/asr_namozi_card.dart';
import 'package:exam3/screens/ekaklar_namozi/bomdod_namozi/bomdod_namoz_card.dart';
import 'package:exam3/screens/ekaklar_namozi/bomdod_namozi/bomdod_namozi.dart';
import 'package:exam3/screens/ekaklar_namozi/erkak_namozi.dart';
import 'package:exam3/screens/ekaklar_namozi/peshin_namozi/peshin_namoz_card.dart';
import 'package:exam3/screens/ekaklar_namozi/peshin_namozi/peshin_namozi.dart';
import 'package:exam3/screens/ekaklar_namozi/shom_namozi/shom_namozi.dart';
import 'package:exam3/screens/ekaklar_namozi/shom_namozi/shom_namozi_card.dart';
import 'package:exam3/screens/ekaklar_namozi/vitr_namozi/vitr_namozi.dart';
import 'package:exam3/screens/ekaklar_namozi/vitr_namozi/vitr_namozi_card.dart';
import 'package:exam3/screens/ekaklar_namozi/xufton_namozi/xufton_namozi.dart';
import 'package:exam3/screens/ekaklar_namozi/xufton_namozi/xufton_namozi_card.dart';
import 'package:exam3/screens/my_home_page.dart';
import 'package:exam3/screens/namoz_vaqtlari/namoz_vaqtlari_page.dart';
import 'package:exam3/screens/namozdagi_xatoliklar.dart';
import 'package:exam3/screens/poklanish_pages/TahoratOlish/tahorat_olish_tartibi.dart';
import 'package:exam3/screens/poklanish_pages/poklanish_page.dart';
import 'package:exam3/screens/qazo_xisobi.dart';
import 'package:exam3/screens/qibla_aniqlash/qibla_aniqlash.dart';
import 'package:exam3/screens/tasbeh.dart';
import 'package:exam3/screens/zikrlar.dart';
import 'package:flutter/material.dart';

class RouterGenerator {
  static generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const MyHomePage(),
        );
      case '/namoz_vaqt':
        return MaterialPageRoute(
          builder: (context) => const NamozVaqtlari(),
        );
      case '/poklanish':
        return MaterialPageRoute(
          builder: (context) => const Poklanish(),
        );
      case '/erkak_namoz':
        return MaterialPageRoute(
          builder: (context) => const ErkaklarNamozi(),
        );
      case '/ayol_namoz':
        return MaterialPageRoute(
          builder: (context) => const AyollarNamozi(),
        );
      case '/qibla':
        return MaterialPageRoute(
          builder: (context) => const QiblaAniqlash(),
        );
      case '/tasbeh':
        return MaterialPageRoute(
          builder: (context) => Tasbeh(),
        );
      case '/qazo':
        return MaterialPageRoute(
          builder: (context) => const QazoXisobi(),
        );
      case '/xatoliklar':
        return MaterialPageRoute(
          builder: (context) => const NamozdagiXatoliklar(),
        );
      case '/zikrlar':
        return MaterialPageRoute(
          builder: (context) => const Zikrlar(),
        );
      case '/tahorat':
        return MaterialPageRoute(
          builder: (context) => const TahoratTartibi(),
        );
      case '/bomdod_erkak':
        return MaterialPageRoute(
          builder: (context) => const BomdodNamoziErkak(),
        );
      case '/bomdod_ayol':
        return MaterialPageRoute(
          builder: (context) => const BomdodNamoziAyol(),
        );
      case '/bomdod_tartibi':
        return MaterialPageRoute(
          builder: (context) => const BomdodNamoziTartibi(),
        );
      case '/bomdod_tartibi_ayol':
        return MaterialPageRoute(
          builder: (context) => const BomdodNamoziTartibiAyol(),
        );
      case '/peshin_tartibi':
        return MaterialPageRoute(
          builder: (context) => const PeshinNamoziTartibi(),
        );
      case '/peshin_tartibi_ayol':
        return MaterialPageRoute(
          builder: (context) => const PeshinNamoziTartibiAyol(),
        );
      case '/peshin_erkak':
        return MaterialPageRoute(
          builder: (context) => const PeshinNamoziErkak(),
        );
      case '/peshin_ayol':
        return MaterialPageRoute(
          builder: (context) => const PeshinNamoziAyol(),
        );
      case '/asr_tartibi':
        return MaterialPageRoute(
          builder: (context) => const AsrNamoziTartibi(),
        );
      case '/asr_tartibi_ayol':
        return MaterialPageRoute(
          builder: (context) => const AsrNamoziTartibiAyol(),
        );
      case '/asr_erkak':
        return MaterialPageRoute(
          builder: (context) => const AsrNamoziErkak(),
        );
      case '/asr_ayol':
        return MaterialPageRoute(
          builder: (context) => const AsrNamoziAyol(),
        );
      case '/shom_tartibi':
        return MaterialPageRoute(
          builder: (context) => const ShomNamoziTartibi(),
        );
      case '/shom_tartibi_ayol':
        return MaterialPageRoute(
          builder: (context) => const ShomNamoziTartibiAyol(),
        );
      case '/shom_erkak':
        return MaterialPageRoute(
          builder: (context) => const ShomNamoziErkak(),
        );
      case '/shom_ayol':
        return MaterialPageRoute(
          builder: (context) => const ShomNamoziAyol(),
        );
      case '/xufton_tartibi':
        return MaterialPageRoute(
          builder: (context) => const XuftonNamoziTartibi(),
        );
      case '/xufton_tartibi_ayol':
        return MaterialPageRoute(
          builder: (context) => const XuftonNamoziTartibiAyol(),
        );
      case '/xufton_erkak':
        return MaterialPageRoute(
          builder: (context) => const XuftonNamoziErkak(),
        );
      case '/xufton_ayol':
        return MaterialPageRoute(
          builder: (context) => const XuftonNamoziAyol(),
        );
      case '/vitr_tartibi':
        return MaterialPageRoute(
          builder: (context) => const VitrNamoziTartibi(),
        );
      case '/vitr_tartibi_ayol':
        return MaterialPageRoute(
          builder: (context) => const VitrNamoziTartibiAyol(),
        );
      case '/vitr_erkak':
        return MaterialPageRoute(
          builder: (context) => const VitrNamoziErkak(),
        );
      case '/vitr_ayol':
        return MaterialPageRoute(
          builder: (context) => const VitrNamoziAyol(),
        );
      case '/qazo_namozlari':
        return MaterialPageRoute(
          builder: (context) => const QazoNamozlari(),
        );
        case '/ayollarga_xos_hollar':
        return MaterialPageRoute(
          builder: (context) => const AyollargaXosHollar(),
        );
      case '/ayollarga_xos_tartib':
        return MaterialPageRoute(
          builder: (context) => const AyollargaXosHollarTartibi(),
        );
    }
  }
}
