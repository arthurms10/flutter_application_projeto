import 'package:flutter/material.dart';

class TelaListasView extends StatefulWidget {
  const TelaListasView({Key? key}) : super(key: key);

  @override
  State<TelaListasView> createState() => _TelaListasViewState();
}

class _TelaListasViewState extends State<TelaListasView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas de Compras'),
        actions: [
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
                  '',
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
