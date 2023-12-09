import 'package:flutter/material.dart';
import 'package:rss_interactive/application_generic_methot.dart';

class Viop extends StatelessWidget {
  Viop({super.key});
  final websiteUriGoogle = Uri.parse(
      "https://play.google.com/store/apps/details?id=com.rssinteractive.viop101");
  final websiteUriApp = Uri.parse(
      "https://apps.apple.com/tr/app/vi-op-101-nedir-nas%C4%B1l-oynan%C4%B1r/id1584334924");
  final String paraticHaberInfo =
      "Viop 101, VİOP yatırımına giriş yapmak isteyenler için hazırlanmış bir eğitim uygulamasıdır. Uygulama ile VİOP piyasasının temel kavramlarını, işleyişini, analiz yöntemlerini ve yatırım stratejilerini ücretsiz öğrenebilirsiniz.";
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
                "Viop 101: Nedir Nasıl Oynanır",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 255, 196, 0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              titlePadding: const EdgeInsets.only(bottom: 15),
              background:
                  Image.asset("images/viop_banner.jpeg", fit: BoxFit.cover),
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
                        genericInfoContainer("Çıkış Tarihi", "3 Eylül 2021"),
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

Column viopButton(BuildContext context) {
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
              Navigator.pushNamed(context, "/Viop");
            },
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("images/viop.jpeg")),
            title: const Text(
              "Viop 101: Nedir Nasıl Oynanır",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            subtitle: const Text("4,4★ | 1B+ İndirme | 23 Yorum"),
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
