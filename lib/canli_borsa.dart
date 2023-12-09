import 'package:flutter/material.dart';
import 'package:rss_interactive/application_generic_methot.dart';

class CanliBorsa extends StatelessWidget {
  CanliBorsa({super.key});
  final websiteUriGoogle = Uri.parse(
      "https://play.google.com/store/apps/details?id=com.rssinteractive.canliborsa");
  final websiteUriApp = Uri.parse(
      "https://apps.apple.com/tr/app/canl%C4%B1-borsa-hisse-senetleri/id1538286494");
  final String paraticHaberInfo =
      "Canlı Borsa; Türk ve dünya borsalarını ücretsiz takip edin. Borsalar, Türk ve yabancı hisse senetleri, endeksler, altın fiyatları, döviz kurları, pariteler, emtialar… Tüm finansal piyasa enstrümanları ve takip araçları tek bir uygulamada. Yenilenen veri altyapımız ile canlı veri akışını, anlık grafikler ve tablolardan takip edebilirsiniz. Ayrıca sanal portföy, takip listesi gibi ek takip kanalları ile daha kişisel bir görünüm elde edebilirsiniz.";
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
                "Canlı Borsa: Hisse Senetleri",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 255, 196, 0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              titlePadding: const EdgeInsets.only(bottom: 15),
              background: Image.asset("images/canli_borsa_banner.jpeg",
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
                        genericInfoContainer("Sürüm", "2.2.1"),
                        genericInfoContainer(
                            "Güncellenme Tarihi", "10 Kasım 2023")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        genericInfoContainer("Çıkış Tarihi", "28 Ekim 2020"),
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

Column canliBorsaButton(BuildContext context) {
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
              Navigator.pushNamed(context, "/CanliBorsa");
            },
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("images/canli_borsa.jpeg")),
            title: const Text(
              "Canlı Borsa: Hisse Senetleri",
              style: TextStyle(fontSize: 16),
            ),
            subtitle: const Text("4,6★ | 100B+ İndirme | 11.6B Yorum"),
            trailing: const Icon(Icons.arrow_forward_ios),
          )),
    ],
  );
}
