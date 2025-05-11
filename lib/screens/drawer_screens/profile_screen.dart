import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();  // Voltar à tela anterior
          },
        ),
        backgroundColor: Colors.blue, // Cor de fundo da AppBar (azul)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.person,
              size: 80,
              color: Colors.blue, // Ícone azul
            ),
            SizedBox(height: 16),
            Text(
              "Perfil",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Cor do texto (preto)
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(
                "Gerencie suas informações pessoais, foto de perfil e preferências de conta.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black, // Cor do texto (preto)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
