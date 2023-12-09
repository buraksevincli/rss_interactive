import 'package:flutter/material.dart';
import 'package:rss_interactive/application_generic_methot.dart';

class CepFinans extends StatelessWidget {
  CepFinans({super.key});
  final websiteUriGoogle = Uri.parse(
      "https://play.google.com/store/apps/details?id=com.rssinteractive.cepfinans");
  final websiteUriApp = Uri.parse(
      "https://apps.apple.com/tr/app/cepfinans-d%C3%B6viz-alt%C4%B1n-borsa/id1501950236");
  final String paraticHaberInfo =
      "CepFinans, yüzlerce finansal piyasa enstrümanı ve etkili takip araçları ücretsiz, tek bir uygulamada, Cebinizde! Altın piyasaları, döviz kurları, Borsa İstanbul ve dünya borsaları, endeksler, emtialar, pariteler… Yenilenen veri tabanı ile anlık veri akışı daha sağlıklı sağlanmakta. Anlık grafiklerdeki geliştirmeler devam etmekte; çok yakında güncelleniyor.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 255, 196, 0),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            expandedHeight: 250,
            pinned: true,
            backgroundColor: const Color.fromARGB(255, 14, 4, 51),
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                "CepFinans: Döviz, Altın, Borsa",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 255, 196, 0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              titlePadding: const EdgeInsets.only(bottom: 15),
              background: Image.asset("images/cep_finans_banner.jpeg",
                  fit: BoxFit.fill),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      paraticHaberInfo,
                      style: const TextStyle(fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        genericInfoContainer("Sürüm", "2.7.1"),
                        genericInfoContainer(
                            "Güncellenme Tarihi", "10 Kasım 2023")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        genericInfoContainer("Çıkış Tarihi", "27 Şubat 2020"),
                        genericInfoContainer("İndirme", "100.000+")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        genericInfoContainer(
                            "Android Sürümü", "4.4 ve Sonrası"),
                        genericInfoContainer("Sunan", "RSS Interactive")
                      ],
                    ),
                    genericStoreButtons(websiteUriGoogle, websiteUriApp)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Column cepFinansButton(BuildContext context) {
  return Column(
    children: [
      Card(
          color: const Color.fromARGB(255, 255, 196, 0),
          shadowColor: const Color.fromARGB(255, 255, 230, 0),
          margin: const EdgeInsets.all(8),
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, "/CepFinans");
            },
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("images/cep_finans.jpeg")),
            title: const Text(
              "CepFinans: Döviz, Altın, Borsa",
              style: TextStyle(fontSize: 16),
            ),
            subtitle: const Text("4,6★ | 100B+ İndirme | 17.6B Yorum"),
            trailing: const Icon(Icons.arrow_forward_ios),
          )),
      const Divider(
        color: Color.fromARGB(255, 14, 4, 51),
        thickness: 1,
        height: 10,
        indent: 10,
        endIndent: 10,
      ),
    ],
  );
}
