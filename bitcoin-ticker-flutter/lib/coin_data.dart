import 'dart:convert';
import 'package:http/http.dart';
import 'dart:math';

import 'dart:io';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const apiKey = '602651A4-1808-4AE6-99A5-48ED9066E374';

class CoinData {
  String rand = '?';

  Future<void> updateCoinRate() async {
    await Future.delayed(const Duration(seconds: 2));

    Random random = new Random();
    int randomNumber = random.nextInt(100);
    rand = randomNumber.toString();
  }
}
