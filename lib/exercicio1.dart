import 'package:flutter/material.dart';

class TelaLinguagens extends StatelessWidget {
  const TelaLinguagens({super.key});

  final List<String> linguagens = const [
    'Dart',
    'Java',
    'Python',
    'JavaScript',
    'C',
    'C++',
    'C#',
    'Kotlin',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercício 1 - Linguagens'),
      ),
      body: ListView.builder(
        itemCount: linguagens.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.code),
            title: Text(linguagens[index]),
          );
        },
      ),
    );
  }
}
