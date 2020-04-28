/* **************************************
  Novos widgets utilizados neste projeto:
    FlatButton.icon
    Divider
    Spacer
*************************************** */

import 'package:flutter/material.dart';

class QuoteApp extends StatefulWidget {
  @override
  _QuoteAppState createState() => _QuoteAppState();
}

class _QuoteAppState extends State<QuoteApp> {
  int _index = 0;
  List quotes = [
    '1. Be who you are and say what you feel, because those who mind don’t matter and those who matter don’t mind. (Bernard M. Baruch)',
    '2. We must not allow other people’s limited perceptions to define us. (Virginia Satir)',
    '3. Do what you can, with what you have, where you are. (Theodore Roosevelt)',
    '4. Be yourself; everyone else is already taken. (Oscar Wilde)',
    '5. This above all: to thine own self be true. (William Shakespeare)',
    '6. If you cannot do great things, do small things in a great way. (Napoleon Hill)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quote App'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                  width: 350,
                  height: 200,
                  margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Center(
                    child: Text(
                      quotes[_index % quotes.length],
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontStyle: FontStyle.italic,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ), // outra maneira: Text(quotes[_index < quotes.length ? _index : _index = 0]), // % = resto da divisão para não ultrapassar o limite do índice da lista quando _index for incrementado.
                  ),
                ),
              ),
            ),
            // linha horizontal que fica entre 2 widgets.
            Divider(
              thickness: 2.3,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: FlatButton.icon(
                onPressed: _showQuote,
                color: Colors.greenAccent.shade700,
                icon: Icon(Icons.wb_sunny),
                label: Text(
                  'Inspire me!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            // adiciona espacionamento empurrando os widgets para o topo da tela.
            Spacer(),
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    setState(() {
      // increment _index (counter) by 1.
      // outra maneira: _index++;
      _index += 1;
    });
  }
}
