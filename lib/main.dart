// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      home: _RandomWords(),
    );
  }
}

class _RandomWords extends StatefulWidget {
  @override
  __RandomWordsState createState() => __RandomWordsState();
}

class __RandomWordsState extends State<_RandomWords> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
        backgroundColor: Colors.lightGreen.shade400,
      ),
      body: Center(child: Text('You have pressed the button $_count times.')),
      backgroundColor: Colors.blueGrey.shade900,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 30.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}

//   Widget _buildSuggestions() {
//     return ListView.builder(
//         padding: EdgeInsets.all(16.0),
//         itemBuilder: /*1*/ (context, i) {
//           if (i < 4) {
//             if (i.isOdd) return Divider(); /*2*/

//             final index = i ~/ 2; /*3*/
//             if (index >= _suggestions.length) {
//               _suggestions.addAll(generateWordPairs().take(10)); /*4*/
//             }
//             return _buildRow(_suggestions[index]);
//           }
//           return _buildRow([]);
//         });
//   }

//   Widget _buildRow(WordPair pair) {
//     return ListTile(
//       title: Text(
//         pair.asPascalCase,
//         style: _biggerFont,
//       ),
//     );
//   }
// }
