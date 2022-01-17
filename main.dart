import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
import 'quoteCard.dart';

void main() => runApp(MaterialApp(
  home: qoutes(),
));

class qoutes extends StatefulWidget {
  @override
  _qoutesState createState() => _qoutesState();
}

class _qoutesState extends State<qoutes> {

  List<Quote> quote = [
    Quote('Beauty is about what we think inside our heart, not in the presence.','- malar'),
    Quote('Love is not a piece of cake, It is really hard than you thought.','- mukhil'),
    Quote('Respecting others is not a good habit, It is a common sense.','- yazhini'),
    Quote('Practice bravery','- zack'),
    Quote('Do not wait for your day, Make today yours','- roshan'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Beautiful Quotes'),
        centerTitle: true,
        backgroundColor: Colors.grey[500],
      ),
      body: Column(
        children: quote.map((quo) => quoteCard(
            quote: quo,
            delete: (){
              setState(() {
                quote.remove(quo);
              });
            },
        )).toList(),
      ),
    );
  }
}




