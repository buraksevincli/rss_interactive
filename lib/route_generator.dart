import 'package:flutter/cupertino.dart';
import 'package:rss_interactive/altin_fiyatlari.dart';
import 'package:rss_interactive/borsa.dart';
import 'package:rss_interactive/canli_borsa.dart';
import 'package:rss_interactive/cep_finans.dart';
import 'package:rss_interactive/doviz_cevirici.dart';
import 'package:rss_interactive/doviz_kurlari.dart';
import 'package:rss_interactive/forex.dart';
import 'package:rss_interactive/paratic_haber.dart';
import 'package:rss_interactive/paratic_piyasalar.dart';
import 'package:rss_interactive/rss_interactive.dart';
import 'package:rss_interactive/viop.dart';

class RouteGenerator{
  static Route<dynamic>? routeGenerator(RouteSettings settings){
    switch (settings.name) {
      case "/":
        return CupertinoPageRoute(builder: (context) => const RssInteractive());
      case "/ParaticHaber":
        return CupertinoPageRoute(builder: (context) => ParaticHaber());
      case "/ParaticPiyasalar":
        return CupertinoPageRoute(builder: (context) => ParaticPiyasalar());
      case "/CanliBorsa":
        return CupertinoPageRoute(builder: (context) => CanliBorsa());
      case "/DovizKurlari":
        return CupertinoPageRoute(builder: (context) => DovizKurlari());
      case "/AltinFiyatlari":
        return CupertinoPageRoute(builder: (context) => AltinFiyatlari());
      case "/DovizCevirici":
        return CupertinoPageRoute(builder: (context) => DovizCevirici());
      case "/CepFinans":
        return CupertinoPageRoute(builder: (context) => CepFinans());
      case "/Borsa":
        return CupertinoPageRoute(builder: (context) => Borsa());
      case "/Forex":
        return CupertinoPageRoute(builder: (context) => Forex());
      case "/Viop":
        return CupertinoPageRoute(builder: (context) => Viop());
    }
    return null;
  }
}