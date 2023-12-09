import 'package:flutter/material.dart';
import 'package:rss_interactive/altin_fiyatlari.dart';
import 'package:rss_interactive/borsa.dart';
import 'package:rss_interactive/canli_borsa.dart';
import 'package:rss_interactive/cep_finans.dart';
import 'package:rss_interactive/doviz_cevirici.dart';
import 'package:rss_interactive/doviz_kurlari.dart';
import 'package:rss_interactive/forex.dart';
import 'package:rss_interactive/paratic_haber.dart';
import 'package:rss_interactive/paratic_piyasalar.dart';
import 'package:rss_interactive/viop.dart';

class RssInteractive extends StatelessWidget {
  const RssInteractive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "RSS Interactive",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 14, 4, 51)),
      body: Center(
          child: ListView(
        children: [
          headers("Haber"),
          paraticHaberButton(context),
          headers("Finans"),
          paraticPiyasalarButton(context),
          canliBorsaButton(context),
          dovizKurlariButton(context),
          altinFiyatlariButton(context),
          dovizCeviriciButton(context),
          cepFinansButton(context),
          headers("Eğitim"),
          borsaButton(context),
          forexButton(context),
          viopButton(context)
        ],
      )),
    );
  }

  Container headers(String header) {
    return Container(
        margin: const EdgeInsets.only(left: 10, top: 5),
        child: Text(
          header,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color.fromARGB(255, 14, 4, 51)),
        ));
  }
}
