import 'package:flutter/material.dart';
import 'package:rss_interactive/application_generic_methot.dart';

class ParaticHaber extends StatelessWidget {
  ParaticHaber({super.key});
  final websiteUriGoogle = Uri.parse(
      "https://play.google.com/store/apps/details?id=com.rssinteractive.paratic.haber");
  final websiteUriApp = Uri.parse(
      "https://apps.apple.com/tr/app/paratic-haber-ekonomi-finans/id1609081082");
  final String paraticHaberInfo =
      "Tamamen ücretsiz Paratic Haber uygulaması ile gündem, ekonomi ve finansal piyasalara yönelik en güncel gelişmelere ulaşmak için şimdi indirin. Son dakika Gündem Haberleri ile en güncel gelişmelerden ilk sizin haberiniz olsun.";
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
                "Paratic Haber: Ekonomi, Finans",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 255, 196, 0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              titlePadding: const EdgeInsets.only(bottom: 15),
              background:
                  Image.asset("images/paratic_banner2.jpeg", fit: BoxFit.cover),
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

Column paraticHaberButton(BuildContext context) {
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
              Navigator.pushNamed(context, "/ParaticHaber");
            },
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("images/paratic_haber.jpeg")),
            title: const Text(
              "Paratic Haber: Ekonomi, Finans",
              style: TextStyle(fontSize: 16),
            ),
            subtitle: const Text("4,6★ | 10B+ İndirme | 96 Yorum"),
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
