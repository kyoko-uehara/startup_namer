import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //-final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Startup Name Generator',
      home: RandomWords(),

      /*
      title: 'Welcome to Flutter APP',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter appBar'),
        ),
        body: Center(
          //-child: Text('Hello World'),
          //-child: Text(wordPair.asPascalCase),
          child: RandomWords(),
        ),
      ),
      */
    );
    throw UnimplementedError();
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildSuggertions(),
    );

    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }

  Widget _buildSuggertions(){
    return ListView.builder(
        padding:EdgeInsets.all(16.0),
        itemBuilder:(context,i){
          if (i.isOdd) return Divider();

          final index = i ~/ 2;
          if (index >= _suggestions.length){
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        }
    );
  }

  Widget _buildRow(WordPair pair){
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }

}

