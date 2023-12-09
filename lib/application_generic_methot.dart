import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Container genericInfoContainer(
  String header1,
  String header2,
) {
  return Container(
    width: 160,
    height: 100,
    margin: const EdgeInsets.only(bottom: 10, left: 10, top: 15, right: 10),
    decoration: BoxDecoration(
        gradient: const LinearGradient(
            colors: [Color.fromARGB(255, 255, 174, 0), Colors.yellow],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
        border:
            Border.all(width: 1, color: const Color.fromARGB(255, 14, 4, 51)),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: const Color.fromARGB(255, 255, 196, 0)),
    alignment: Alignment.center,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(header1,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),
        Text(header2,
            style: const TextStyle(fontSize: 18), textAlign: TextAlign.center)
      ],
    ),
  );
}

Column genericStoreButtons(Uri websiteUriGoogle, Uri websiteUriApp) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        child: const Text("Uygulamayı İndirin",
            style: TextStyle(
                color: Color.fromARGB(255, 14, 4, 51),
                fontWeight: FontWeight.bold,
                fontSize: 20)),
      ),
      Container(
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Color.fromARGB(255, 255, 174, 0), Colors.yellow],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            border: Border.all(
                width: 2, color: const Color.fromARGB(255, 14, 4, 51)),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: const Color.fromARGB(255, 255, 196, 0)),
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        child: TextButton(
            onPressed: () {
              launchUrl(websiteUriGoogle, mode: LaunchMode.inAppBrowserView);
            },
            child: const Text(
              "Google Play",
              style: TextStyle(
                  color: Color.fromARGB(255, 14, 4, 51),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            )),
      ),
      Container(
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Color.fromARGB(255, 255, 174, 0), Colors.yellow],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            border: Border.all(
                width: 2, color: const Color.fromARGB(255, 14, 4, 51)),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: const Color.fromARGB(255, 255, 196, 0)),
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        child: TextButton(
            onPressed: () {
              launchUrl(websiteUriApp, mode: LaunchMode.inAppBrowserView);
            },
            child: const Text(
              "App Store",
              style: TextStyle(
                  color: Color.fromARGB(255, 14, 4, 51),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            )),
      ),
    ],
  );
}
