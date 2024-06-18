import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(const MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: "Honesty and openness is always the foundation of insightful dialogue.", author: '- bell hooks'),
    Quote(text: "People generally see what they look for, and hear what they listen for.", author: "- Harper Lee"),
    Quote(text: "Never gib up frens!", author: "- Satya ho!"),
  ];

  Widget quoteTemplate(quote){
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: const TextStyle(
                fontSize: 18.0,
                color: Color(0xff757575),
              ),
            ),
            const SizedBox(height:6.0),
            Text(
              quote.author,
              style: const TextStyle(
                fontSize: 14.0,
                color: Color(0xff424242),
              ),
            ),
            const SizedBox(height:6.0),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: const Text(
          'Khatra Quotes',
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
        ),
        ),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          elevation: 0.0,
      ),
      body: Column(
        children: quotes.map((quote)=> quoteTemplate(quote)).toList(),
      )
    );
  }
}

