import 'package:flutter/material.dart';

class Livro {
  final String titulo;
  final String autor;

  Livro({
    required this.titulo,
    required this.autor,
  });
}

class TelaLivros extends StatelessWidget {
  const TelaLivros({super.key});

  List<Livro> get livros => [
        Livro(
          titulo: 'Dom Casmurro',
          autor: 'Machado de Assis',
        ),
        Livro(
          titulo: 'O Pequeno Príncipe',
          autor: 'Antoine de Saint-Exupéry',
        ),
        Livro(
          titulo: 'Harry Potter e a Pedra Filosofal',
          autor: 'J. K. Rowling',
        ),
        Livro(
          titulo: 'O Hobbit',
          autor: 'J. R. R. Tolkien',
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercício 2 - Livros'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: livros.length,
        itemBuilder: (context, index) {
          final livro = livros[index];

          return Card(
            child: ListTile(
              leading: const Icon(Icons.book),
              title: Text(livro.titulo),
              subtitle: Text(livro.autor),
            ),
          );
        },
      ),
    );
  }
}
