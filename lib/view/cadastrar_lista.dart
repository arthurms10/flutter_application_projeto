import 'package:flutter/material.dart';

class TelaCadastrarListaView extends StatefulWidget {
  const TelaCadastrarListaView({Key? key}) : super(key: key);

  @override
  State<TelaCadastrarListaView> createState() => _TelaCadastrarListaViewState();
}

class _TelaCadastrarListaViewState extends State<TelaCadastrarListaView> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _descricaoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tela Cadastrar Lista',
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
                Navigator.pushNamed(context, 'cadastrar_itens');
              },
              child: Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}
