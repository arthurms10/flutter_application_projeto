// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TelaEditarListaView extends StatefulWidget {
  const TelaEditarListaView({Key? key}) : super(key: key);

  @override
  State<TelaEditarListaView> createState() => _TelaEditarListaViewState();
}

class _TelaEditarListaViewState extends State<TelaEditarListaView> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _descricaoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tela Editar Lista (nome)',
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        // Adicionando um botão de retorno na AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Voltar para a página anterior
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/imagens/list.png',
              fit: BoxFit.contain,
            ),
            TextField(
              controller: _nomeController,
              decoration: InputDecoration(
                labelText: 'Nome',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _descricaoController,
              decoration: InputDecoration(
                labelText: 'Descrição',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'listas');
              },
              child: Text('Atualizar'),
            ),
          ],
        ),
      ),
    );
  }
}
