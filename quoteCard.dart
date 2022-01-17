import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

class quoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  quoteCard({required this.quote,required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.red[300],
              ),
            ),
            SizedBox(height: 12.0,),
            Text(
              quote.auth,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.grey[500],
              ),
            ),
            SizedBox(height: 12.0,),
            FlatButton.icon(
                onPressed: (){delete();},
              label: Text(
                  'delete quote',
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Colors.grey[500],
                   letterSpacing: 1.0,
                 ),
              ),
              icon: Icon(
                  Icons.delete,
                  color: Colors.red[300],
              ),
            ),
          ],
        ),
      ),
    );
  }
}