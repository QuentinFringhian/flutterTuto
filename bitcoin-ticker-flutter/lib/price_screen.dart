import 'package:flutter/material.dart';
import 'coin_data.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  CoinData btcData = CoinData();

  Future<void> updateRates() async {
    await btcData.updateCoinRate();
    setState(() {
      btcData = btcData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            'randome number: ${btcData.rand}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
          TextButton(
            onPressed: updateRates,
            child: Text("refresh"),
          )
        ],
      ),
    );
  }
}
