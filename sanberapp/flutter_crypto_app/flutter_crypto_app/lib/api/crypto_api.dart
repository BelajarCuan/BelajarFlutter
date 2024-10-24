import 'dart:convert';
import 'package:flutter_crypto_app/models/coin.dart';
import 'package:http/http.dart' as http;

class CryptoApi {
  static String baseURL = 'https://coinranking1.p.rapidapi.com';

  static const Map<String, String> headers = {
    'X-RapidAPI-Key': '447f286819msh5a741148542786ap132d08jsnff3e8a8e0474',
    'X-RapidAPI-Host': 'coinranking1.p.rapidapi.com'
  };

  static Future<List<Coin>> getCoins({required int limit}) async {
    List<Coin> coinList = [];

    var url = Uri.parse("$baseURL/coins?limit=$limit");
    final response = await http.get(url, headers: headers);
    if (response.statusCode == 200) {
      var coins = jsonDecode(response.body)['data']['coins'];
      for (var coin in coins) {
        coinList.add(Coin.fromJson(coin));
      }
    }
    return coinList;
  }
}
