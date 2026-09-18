import 'package:flutter/material.dart';

class Aluno {
  final String nome;
  final double nota;

  Aluno({
    required this.nome,
    required this.nota,
  });
}

class TelaAlunos extends StatelessWidget {
  const TelaAlunos({super.key});

  List<Aluno> get alunos => [
        Aluno(nome: 'Ana', nota: 9.5),
        Aluno(nome: 'Bruno', nota: 8.0),
        Aluno(nome: 'Carlos', nota: 7.5),
        Aluno(nome: 'Mariana', nota: 10.0),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercício 3 - Alunos'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: alunos.length,
        itemBuilder: (context, index) {
          final aluno = alunos[index];

          return Card(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: Text(aluno.nome),
              subtitle: Text('Nota: ${aluno.nota.toStringAsFixed(1)}'),
            ),
          );
        },
      ),
    );
  }
}
