// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TelaListasView extends StatefulWidget {
  const TelaListasView({Key? key}) : super(key: key);

  @override
  State<TelaListasView> createState() => _TelaListasViewState();
}

class _TelaListasViewState extends State<TelaListasView> {
  int? checkBoxSelecionado; // Armazena o índice do CheckBox selecionado
  bool _mostrarCampoPesquisa = false;
  late TextEditingController _controller;

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
            : Text(
                'Listas de Compras',
                style: TextStyle(
                  color: Colors.blue,
                ),
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
              Navigator.pushNamed(context, 'home');
            },
            icon: Icon(Icons.home),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.symmetric(vertical: 8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                children: [
                  Expanded(child: Text('Lista de Compra "A"')),
                  Radio(
                    value: 0,
                    groupValue: checkBoxSelecionado,
                    onChanged: (int? value) {
                      setState(() {
                        checkBoxSelecionado = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.symmetric(vertical: 8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                children: [
                  Expanded(child: Text('Lista de Compra "B"')),
                  Radio(
                    value: 1,
                    groupValue: checkBoxSelecionado,
                    onChanged: (int? value) {
                      setState(() {
                        checkBoxSelecionado = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.symmetric(vertical: 8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                children: [
                  Expanded(child: Text('Lista de Compra "C"')),
                  Radio(
                    value: 2,
                    groupValue: checkBoxSelecionado,
                    onChanged: (int? value) {
                      setState(() {
                        checkBoxSelecionado = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Espaçamento entre os containers e os botões
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  'itens',
                );
              },
              child: Text('Acessar itens'),
            ),
            SizedBox(height: 20), // Espaçamento entre os botões
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  'editar_lista',
                );
              },
              child: Text('Editar Lista'),
            ),
            SizedBox(height: 20), // Espaçamento entre os botões
            ElevatedButton(
              onPressed: () {},
              child: Text('Excluir Lista'),
            ),
          ],
        ),
      ),
    );
  }
}
