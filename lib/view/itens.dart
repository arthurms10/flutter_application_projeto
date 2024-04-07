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
  List<Item> itens = [
    Item(nome: 'Maçã', quantidade: 5),
    Item(nome: 'Banana', quantidade: 10),
    Item(nome: 'Pão', quantidade: 2),
    Item(nome: 'Margarina', quantidade: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Itens da Lista (nome)'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'editarItens');
            },
            icon: Icon(Icons.edit),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, 'listas');
            },
            icon: Icon(Icons.save),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: itens.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Text('${itens[index].nome} - Quantidade: ${itens[index].quantidade}'),
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
