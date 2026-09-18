import 'package:flutter/material.dart';
import 'exercicio1.dart';
import 'exercicio2.dart';
import 'exercicio3.dart';
import 'exercicio4.dart';
import 'exercicio5.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercícios Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MenuExercicios(),
    );
  }
}

class MenuExercicios extends StatelessWidget {
  const MenuExercicios({super.key});

  void abrirExercicio(BuildContext context, Widget tela) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => tela),
    );
  }

  @override
  Widget build(BuildContext context) {
    final exercicios = [
      (
        'Exercício 1',
        'Lista de linguagens de programação',
        const TelaLinguagens(),
      ),
      (
        'Exercício 2',
        'Catálogo de livros',
        const TelaLivros(),
      ),
      (
        'Exercício 3',
        'Lista de alunos',
        const TelaAlunos(),
      ),
      (
        'Exercício 4',
        'Cadastro e remoção de tarefas',
        const TelaTarefas(),
      ),
      (
        'Exercício 5',
        'Cadastro e controle de estoque',
        const TelaEstoque(),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercícios de Flutter'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: exercicios.length,
        itemBuilder: (context, index) {
          final exercicio = exercicios[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: CircleAvatar(
                child: Text('${index + 1}'),
              ),
              title: Text(
                exercicio.$1,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(exercicio.$2),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => abrirExercicio(context, exercicio.$3),
            ),
          );
        },
      ),
    );
  }
}
