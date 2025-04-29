import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Bugün Ne Yesem ?',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  void yemekleriYenile() {
    setState(() {
      yemekNo = Random().nextInt(5) + 1;
      corbaNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  List<String> corbaAdlari = [
    'Mercimek Çorbası',
    'Tarhana Çorbası',
    'Tavuk Suyu Çorbası',
    'Düğün Çorbası',
    'Yoğurtlu Çorbası',
  ];

  List<String> yemekAdlari = [
    'Karnı Yarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Balık',
  ];

  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(
                    Colors.yellow.withOpacity(0.5),
                  ),
                ),
                onPressed: yemekleriYenile,
                child: Image.asset('assets/corba_$corbaNo.jpg'),
              ),
            ),
          ),
          Text(corbaAdlari[corbaNo - 1], style: TextStyle(fontSize: 20)),
          Container(width: 200, child: Divider(height: 5, color: Colors.black)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(
                    Colors.red.withOpacity(0.2),
                  ),
                ),
                onPressed: yemekleriYenile,
                child: Image.asset('assets/yemek_$yemekNo.jpg'),
              ),
            ),
          ),
          Text(yemekAdlari[yemekNo-1], style: TextStyle(fontSize: 20)),
          Container(width: 200, child: Divider(height: 5, color: Colors.black)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(
                    Colors.orange.withOpacity(0.2),
                  ),
                ),
                onPressed: yemekleriYenile,
                child: Image.asset('assets/tatli_$tatliNo.jpg'),
              ),
            ),
          ),
          Text(tatliAdlari[tatliNo-1], style: TextStyle(fontSize: 20)),
          Container(width: 200, child: Divider(height: 5, color: Colors.black)),
        ],
      ),
    );
  }
}
