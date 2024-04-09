// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TelaCadastrarItensView extends StatefulWidget {
  const TelaCadastrarItensView({Key? key}) : super(key: key);

  @override
  State<TelaCadastrarItensView> createState() => _TelaCadastrarItensViewState();
}

class _TelaCadastrarItensViewState extends State<TelaCadastrarItensView> {
  List<Item> itens = [];

  TextEditingController nomeController = TextEditingController();
  TextEditingController quantidadeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Adicionar Itens',
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: nomeController,
                    decoration: InputDecoration(
                      labelText: 'Nome do Item',
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: quantidadeController,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        final newValue = int.tryParse(value);
                        if (newValue == null) {
                          quantidadeController.text = '';
                        }
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Quantidade',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  String nome = nomeController.text;
                  int quantidade = int.tryParse(quantidadeController.text) ?? 0;
                  if (nome.isNotEmpty && quantidade > 0) {
                    itens.add(Item(nome: nome, quantidade: quantidade));
                    nomeController.clear();
                    quantidadeController.clear();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Item adicionado'),
                      ),
                    );
                  } else {
                    // Tratar erro de entrada inválida, se necessário
                  }
                });
              },
              child: Text('Adicionar'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: itens.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                        '${itens[index].nome} - ${itens[index].quantidade}'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            _editarItem(context, index);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            _excluirItem(index);
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  'listas',
                );
              },
              child: Text('Salvar itens'),
            ),
          ],
        ),
      ),
    );
  }

  void _editarItem(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Editar Item'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: TextEditingController(text: itens[index].nome),
                onChanged: (value) {
                  itens[index].nome = value;
                },
                decoration: InputDecoration(
                  labelText: 'Nome do Item',
                ),
              ),
              TextField(
                controller: TextEditingController(
                    text: itens[index].quantidade.toString()),
                onChanged: (value) {
                  itens[index].quantidade = int.tryParse(value) ?? 0;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Quantidade',
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Item editado'),
                    ),
                  );
                  Navigator.pop(context);
                });
              },
              child: Text('Salvar'),
            ),
          ],
        );
      },
    );
  }

  void _excluirItem(int index) {
    setState(() {
      itens.removeAt(index);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Item excluído'),
        ),
      );
    });
  }
}

class Item {
  late String nome;
  late int quantidade;

  Item({required this.nome, required this.quantidade});
}
