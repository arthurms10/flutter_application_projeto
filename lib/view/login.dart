import 'package:flutter/material.dart';

class TelaLoginView extends StatefulWidget {
  const TelaLoginView({super.key});

  @override
  State<TelaLoginView> createState() => _TelaLoginViewState();
}

class _TelaLoginViewState extends State<TelaLoginView> {
  // Atributos

  //Chave identificado do Form
  var formKey = GlobalKey<FormState>();
  var emailLogin = TextEditingController();
  var senhaLogin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(
            color: Colors.blue,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200,
                  child: Image.asset(
                    'lib/imagens/superlogo.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: emailLogin,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    prefix: Icon(Icons.email),
                  ),
                ),
                //
                //Validação
                //
                const SizedBox(height: 20),
                TextFormField(
                  controller: senhaLogin,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                    prefix: Icon(Icons.password_sharp),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Ação para o botão de login
                    var email = emailLogin.text;
                    var senha = senhaLogin.text;

                    var nome =
                        'Arthur'; // Exemplo de dado para enviar para próxima tela
                    if (validarCampos(email, senha)) {
                      Navigator.pushNamed(
                        context,
                        'home',
                        arguments: nome,
                      );
                    }
                    // Navegação para a próxima tela
                  },
                  child: const Text('Entrar'),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      'esquecer_senha',
                    );// Ação para o botão de recuperar senha
                  },
                  child: const Text('Recuperar Senha'),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    // Navegação recuperar senha
                    Navigator.pushNamed(
                      context,
                      'sobre',
                    );
                  },
                  child: const Text('Sobre'),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    // Ação para o botão de cadastrar
                    Navigator.pushNamed(context,
                     'cadastro');
                  },
                  child: const Text('Cadastrar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool validarCampos(String email, String senha) {
    // Verifica se o campo de e-mail está vazio
    if (email.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('E-mail não pode estar vazio')),
      );
      return false;
    }

    // Verifica se o campo de e-mail possui um formato válido
    final emailValido =
        RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
    if (!emailValido) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('E-mail inválido')),
      );
      return false;
    }

    // Verifica se o campo de senha está vazio
    if (senha.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Senha não pode estar vazia')),
      );
      return false;
    }

    // Verifica se a senha tem pelo menos 6 caracteres
    if (senha.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('A senha deve ter pelo menos 6 caracteres')),
      );
      return false;
    }

    // Se passou por todas as verificações, retorna verdadeiro
    return true;
  }
}
