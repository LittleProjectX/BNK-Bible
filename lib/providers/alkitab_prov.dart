import 'package:bnk_bible/models/alkitab.dart';
import 'package:flutter/material.dart';

class Alkitabs with ChangeNotifier {
  final List<Alkitab> _allData = [];

  List<Alkitab> get allData => _allData;

  get jmlData => _allData.length;

  final List<String> pLama = [
    'Kejadian',
    'Keluaran',
    'Imamat',
    'Bilangan',
    'Ulangan',
    'Yosua',
    'Hakim-Hakim',
    'Rut',
    '1 Samuel',
    '2 Samuel',
    '1 Raja-Raja',
    '2 Raja-Raja',
    '1 Tawarikh',
    '2 Tawarikh',
    'Ezra',
    'Nehemia',
    'Ester',
    'Ayub',
    'Mazmur',
    'Amsal',
    'Pengkhotbah',
    'Kidung Agung',
    'Yesaya',
    'Yeremia',
    'Ratapan',
    'Yehezkiel',
    'Daniel',
    'Hosea',
    'Yoel',
    'Amos',
    'Obaja',
    'Yunus',
    'Mikha',
    'Nahum',
    'Habakuk',
    'Zefanya',
    'Hagai',
    'Maleakhi',
  ];

  final List<String> pBaru = [
    'Matius',
    'Markus',
    'Lukas',
    'Yohanes',
    'Kisah Para Rasul',
    'Roma',
    '1 Korintus',
    '2 Korintus',
    'Galatia',
    'Efesus',
    'Filipi',
    'Kolose',
    '1 Tesalonika',
    '2 Tesalonika',
    '1 Timotius',
    '2 Timotius',
    'Titus',
    'Filemon',
    'Ibrani',
    'Yakobus',
    '1 Petrus',
    '2 Petrus',
    '1 Yohanes',
    '2 Yohanes',
    '3 Yohanes',
    'Yudas',
    'Wahyu',
  ];

  // void pasal(String kitab) {
  //   var pasal;

  //   if (kitab == 'Kejadian') {
  //     final List<String> pasal = ['1', '2', '3'];
  //   }
  // }
}
