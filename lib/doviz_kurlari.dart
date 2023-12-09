import 'package:flutter/material.dart';
import 'package:rss_interactive/application_generic_methot.dart';

class DovizKurlari extends StatelessWidget {
  DovizKurlari({super.key});
  final websiteUriGoogle = Uri.parse(
      "https://play.google.com/store/apps/details?id=com.rssinteractive.dovizkurlari");
  final websiteUriApp = Uri.parse(
      "https://apps.apple.com/tr/app/d%C3%B6viz-kurlar%C4%B1-canl%C4%B1-dolar-euro/id1535433392");
  final String paraticHaberInfo =
      "Dolar, Euro, Sterlin, Ruble ve Dinar gibi döviz kurlarına ek olarak; altın, borsa, emtia, parite ve tüm piyasaları takip edin. Canlı döviz kurları, anlık altın fiyatları, hisse senetleri, borsa gibi piyasaları takip edebilir; finansal piyasalara yönelik son dakika haberlere ulaşabilirsiniz. Döviz Kurları tüm piyasaları sade ve anlaşılır arayüzü ile canlı olarak takip etmenizi sağlamaktadır.";
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
                "Döviz Kurları Canlı Dolar Euro",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 255, 196, 0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              titlePadding: const EdgeInsets.only(bottom: 15),
              background: Image.asset("images/doviz_kurlari_banner.jpeg",
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
                        genericInfoContainer("Sürüm", "1.3.3"),
                        genericInfoContainer(
                            "Güncellenme Tarihi", "17 Kasım 2023")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        genericInfoContainer("Çıkış Tarihi", "14 Ekim 2020"),
                        genericInfoContainer("İndirme", "500.000+")
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

Column dovizKurlariButton(BuildContext context) {
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
              Navigator.pushNamed(context, "/DovizKurlari");
            },
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("images/doviz_kurlari.jpeg")),
            title: const Text(
              "Döviz Kurları Canlı Dolar Euro",
              style: TextStyle(fontSize: 16),
            ),
            subtitle: const Text("4,6★ | 500B+ İndirme | 43.6B Yorum"),
            trailing: const Icon(Icons.arrow_forward_ios),
          )),
    ],
  );
}
