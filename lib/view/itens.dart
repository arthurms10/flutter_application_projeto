// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Item {
  final String nome;
  final int quantidade;
  bool comprado;

  Item({required this.nome, required this.quantidade, this.comprado = false});
}

class TelaItensView extends StatefulWidget {
  const TelaItensView({Key? key}) : super(key: key);

  @override
  State<TelaItensView> createState() => _TelaItensViewState();
}

class _TelaItensViewState extends State<TelaItensView> {
  bool _mostrarCampoPesquisa = false;
  late TextEditingController _controller;
  List<Item> itens = [
    Item(nome: 'Maçã', quantidade: 5),
    Item(nome: 'Banana', quantidade: 10),
    Item(nome: 'Pão', quantidade: 2),
    Item(nome: 'Margarina', quantidade: 1),
  ];
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: _mostrarCampoPesquisa
              ? TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: 'Pesquisar...',
                    border: InputBorder.none,
                  ),
                  style: TextStyle(color: Colors.black),
                )
              : Text('Itens - Lista (nome)',
                  style: TextStyle(
                    color: Colors.blue,
                  )
                ),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  _mostrarCampoPesquisa = !_mostrarCampoPesquisa;
                });
              },
              icon: Icon(_mostrarCampoPesquisa ? Icons.close : Icons.search),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'editar_itens');
              },
              icon: Icon(Icons.edit),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'listas');
              },
              icon: Icon(Icons.save),
            ),
          ]),
      body: ListView.builder(
        itemCount: itens.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Text(
                '${itens[index].nome} - Quantidade: ${itens[index].quantidade}'),
            value: itens[index].comprado,
            onChanged: (bool? value) {
              setState(() {
                itens[index].comprado = value ?? false;
              });
            },
          );
        },
      ),
    );
  }
}
