import 'package:flutter/material.dart';
import 'package:rss_interactive/application_generic_methot.dart';

class AltinFiyatlari extends StatelessWidget {
  AltinFiyatlari({super.key});
  final websiteUriGoogle = Uri.parse(
      "https://play.google.com/store/apps/details?id=com.rssinteractive.altinfiyatlari");
  final websiteUriApp = Uri.parse(
      "https://apps.apple.com/tr/app/alt%C4%B1n-fiyatlar%C4%B1-canl%C4%B1-gram-ons/id1536118569");
  final String paraticHaberInfo =
      "Ons, gram altın ve çeyrek altın gibi altın çeşitlerine ek olarak; döviz, borsa, emtia, parite ve tüm piyasaları takip edin. Anlık fiyat grafiği, değişim oranları ve bankaların alış-satış fiyatları ile enstrümanları kolayca takip edebilirsiniz. Özelleştirilebilir anasayfa deneyimi, altın temalı sade tasarım ve kolay kullanımı ile tamamen ücretsiz Altın Fiyatları uygulamasını şimdi indirin ve deneyin.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 14, 4, 51),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            expandedHeight: 250,
            pinned: true,
            backgroundColor: const Color.fromARGB(255, 255, 196, 0),
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                "Altın Fiyatları Canlı Gram ONS",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 14, 4, 51),
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              titlePadding: const EdgeInsets.only(bottom: 15),
              background: Image.asset("images/altin_fiyatlari_banner.jpeg",
                  fit: BoxFit.fitWidth),
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
                        genericInfoContainer("Sürüm", "2.2.1"),
                        genericInfoContainer(
                            "Güncellenme Tarihi", "1 Aralık 2023")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        genericInfoContainer("Çıkış Tarihi", "16 Ekim 2020"),
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

Column altinFiyatlariButton(BuildContext context) {
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
              Navigator.pushNamed(context, "/AltinFiyatlari");
            },
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("images/altin_fiyatlari.jpeg")),
            title: const Text(
              "Altın Fiyatları Canlı Gram ONS",
              style: TextStyle(fontSize: 16),
            ),
            subtitle: const Text("4,6★ | 100B+ İndirme | 13.3B Yorum"),
            trailing: const Icon(Icons.arrow_forward_ios),
          )),
    ],
  );
}
