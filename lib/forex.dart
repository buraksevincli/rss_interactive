import 'package:flutter/material.dart';
import 'package:rss_interactive/application_generic_methot.dart';

class Forex extends StatelessWidget {
  Forex({super.key});
  final websiteUriGoogle = Uri.parse(
      "https://play.google.com/store/apps/details?id=com.rssinteractive.forex101");
  final websiteUriApp = Uri.parse(
      "https://apps.apple.com/tr/app/forex-101-nedir-nas%C4%B1l-oynan%C4%B1r/id1585126642");
  final String paraticHaberInfo =
      "Forex 101, forex piyasasına giriş yapmak isteyenler için hazırlanmış bir eğitim uygulamasıdır. Uygulama ile forex piyasasının temel kavramlarını, işleyişini, analiz yöntemlerini ve yatırım stratejilerini ücretsiz öğrenebilirsiniz.";
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
                "Forex 101: Nedir Nasıl Oynanır",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 255, 196, 0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              titlePadding: const EdgeInsets.only(bottom: 15),
              background:
                  Image.asset("images/forex_banner.jpeg", fit: BoxFit.cover),
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
                        genericInfoContainer("Sürüm", "1.0.5"),
                        genericInfoContainer(
                            "Güncellenme Tarihi", "25 Eylül 2023")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        genericInfoContainer("Çıkış Tarihi", "9 Eylül 2021"),
                        genericInfoContainer("İndirme", "1.000+")
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

Column forexButton(BuildContext context) {
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
              Navigator.pushNamed(context, "/Forex");
            },
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("images/forex.jpeg")),
            title: const Text(
              "Forex 101: Nedir Nasıl Oynanır",
              style: TextStyle(fontSize: 16),
            ),
            subtitle: const Text("4,8★ | 1B+ İndirme | 13 Yorum"),
            trailing: const Icon(Icons.arrow_forward_ios),
          )),
    ],
  );
}
