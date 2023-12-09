import 'package:flutter/material.dart';
import 'package:rss_interactive/application_generic_methot.dart';

class Borsa extends StatelessWidget {
  Borsa({super.key});
  final websiteUriGoogle = Uri.parse(
      "https://play.google.com/store/apps/details?id=com.rssinteractive.borsa101");
  final websiteUriApp = Uri.parse(
      "https://apps.apple.com/tr/app/borsa-101-nedir-nas%C4%B1l-oynan%C4%B1r/id1578895464");
  final String paraticHaberInfo =
      "Ücretsiz “Borsa 101” Eğitim Uygulaması ile; borsa nedir, nasıl oynanır, nasıl takip edilir gibi temel bilgilerle giriş yapar; BİST 100 ile tanışırsınız. Borsayı düşüren, yükselten; borsada kazandıran, kaybettiren olası etkenlerin sunulduğu eğitim uygulaması aynı zamanda soru-cevap ve içerik önerileri ile pekiştirmenizi destekler.";
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
                "Borsa 101: Nedir Nasıl Oynanır",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 255, 196, 0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              titlePadding: const EdgeInsets.only(bottom: 15),
              background:
                  Image.asset("images/borsa_banner.jpeg", fit: BoxFit.fill),
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
                        genericInfoContainer("Sürüm", "1.0.4"),
                        genericInfoContainer(
                            "Güncellenme Tarihi", "25 Eylül 2023")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        genericInfoContainer("Çıkış Tarihi", "5 Ağustos 2021"),
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

Column borsaButton(BuildContext context) {
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
              Navigator.pushNamed(context, "/Borsa");
            },
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("images/borsa.jpeg")),
            title: const Text(
              "Borsa 101: Nedir Nasıl Oynanır",
              style: TextStyle(fontSize: 16),
            ),
            subtitle: const Text("4,4★ | 10B+ İndirme | 195 Yorum"),
            trailing: const Icon(Icons.arrow_forward_ios),
          )),
    ],
  );
}
