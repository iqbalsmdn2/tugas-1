import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final nama = WordPair.random();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nama Startup',
      home: AcakNama(),
    );
  }
}

class AcakNama extends StatefulWidget {
  const AcakNama({super.key});

  @override
  State<AcakNama> createState() => _AcakNamaState();
}

class _AcakNamaState extends State<AcakNama> {
  final nama = <WordPair>[];

  Widget listNama() {
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();

        final index = i ~/ 2;
        if (index >= nama.length) {
          nama.addAll(generateWordPairs().take(10));
        }
        return detailList(nama[index]);
      },
    );
  }

  Widget detailList(WordPair detailNama) {
    return ListTile(
      title: Text(
        detailNama.asUpperCase,
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nama Startup'),
      ),
      body: listNama(),
    );
  }
}