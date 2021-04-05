import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //-final wordPair = WordPair.random();
    return MaterialApp(
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

    );
    throw UnimplementedError();
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}

