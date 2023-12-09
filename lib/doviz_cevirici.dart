import 'package:flutter/material.dart';
import 'package:rss_interactive/application_generic_methot.dart';

class DovizCevirici extends StatelessWidget {
  DovizCevirici({super.key});
  final websiteUriGoogle = Uri.parse(
      "https://play.google.com/store/apps/details?id=com.rssinteractive.converter");
  final websiteUriApp = Uri.parse(
      "https://apps.apple.com/tr/app/d%C3%B6viz-%C3%A7evirici-alt%C4%B1n-hesaplama/id1504499894");
  final String paraticHaberInfo =
      "Döviz Çevirici uygulaması ile döviz kurları, altın çeşitleri ve kripto paralar arasında hızlı ve kolay bir şekilde çeviri yapabilirsiniz. Onlarca döviz kuru, altın çeşidi ve kripto paranın canlı grafiklerini de ücretsiz olarak takip edebilirsiniz. Hesap makinesi özelliği sayesinde basit matematiksel işlemleri de gerçekleştirebilirsiniz.";
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
                "Döviz Çevirici & Altın Hesaplama",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 255, 196, 0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              titlePadding: const EdgeInsets.only(bottom: 15),
              background: Image.asset("images/doviz_cevirici_banner.jpeg",
                  fit: BoxFit.cover),
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
                        genericInfoContainer("Sürüm", "1.2.4"),
                        genericInfoContainer(
                            "Güncellenme Tarihi", "25 Ekim 2023")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        genericInfoContainer("Çıkış Tarihi", "8 Şubat 2022"),
                        genericInfoContainer("İndirme", "10.000+")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        genericInfoContainer(
                            "Android Sürümü", "5.0 ve Sonrası"),
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

Column dovizCeviriciButton(BuildContext context) {
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
              Navigator.pushNamed(context, "/DovizCevirici");
            },
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("images/doviz_cevirici.jpeg")),
            title: const Text(
              "Döviz Çevirici & Altın Hesapla",
              style: TextStyle(fontSize: 16),
            ),
            subtitle: const Text("4,6★ | 10B+ İndirme | 1.73B Yorum"),
            trailing: const Icon(Icons.arrow_forward_ios),
          )),
    ],
  );
}
