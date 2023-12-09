import 'package:flutter/material.dart';
import 'package:rss_interactive/application_generic_methot.dart';

class ParaticPiyasalar extends StatelessWidget {
  ParaticPiyasalar({super.key});
  final websiteUriGoogle = Uri.parse(
      "https://play.google.com/store/apps/details?id=com.rssinteractive.paratic.piyasalar");
  final websiteUriApp = Uri.parse(
      "https://apps.apple.com/tr/app/paratic-piyasalar-d%C3%B6viz-borsa/id1532368104");
  final String paraticHaberInfo =
      "“Türkiye’nin Para Portalı” olma yolunda emin adımlarla ilerleyen Paratic’in; reklamsız ve ücretsiz Piyasa ekranı ile ekonomi dünyasına bağlanın. Altın fiyatları, döviz kurları, endeksler, borsalar, Türk ve yabancı hisse senetleri, pariteler, emtialar… Tüm yatırım araçları; sade tasarım, kolay kullanım ve kişiselleştirilebilir ekranlar eşliğinde Paratic Piyasalar’da. Yenilenen altyapı ile sağlıklı, ücretsiz ve canlı veri akışını grafik ve tablolardan takip edebilirsiniz. Ayrıca takip listesi, sanal portföy ve alarm gibi araçlarla özel ihtiyaçlarınızı kolayca giderebilirsiniz.";
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
            backgroundColor: Colors.black,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                "Paratic Piyasalar: Döviz Borsa",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 255, 196, 0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              titlePadding: const EdgeInsets.only(bottom: 15),
              background: Image.asset("images/paratic_piyasalar_banner.jpeg",
                  fit: BoxFit.fitHeight),
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
                        genericInfoContainer("Sürüm", "2.2.7"),
                        genericInfoContainer(
                            "Güncellenme Tarihi", "6 Ekim 2023")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        genericInfoContainer("Çıkış Tarihi", "19 Eylül 2020"),
                        genericInfoContainer("İndirme", "100.000+")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        genericInfoContainer(
                            "Android Sürümü", "4.4W ve Sonrası"),
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

Column paraticPiyasalarButton(BuildContext context) {
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
              Navigator.pushNamed(context, "/ParaticPiyasalar");
            },
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("images/paratic_piyasalar.jpeg")),
            title: const Text(
              "Paratic Piyasalar: Döviz Borsa",
              style: TextStyle(fontSize: 16),
            ),
            subtitle: const Text("4,1★ | 100B+ İndirme | 9.06B Yorum"),
            trailing: const Icon(Icons.arrow_forward_ios),
          )),
    ],
  );
}
