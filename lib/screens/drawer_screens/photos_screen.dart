import 'package:flutter/material.dart';

class PhotosScreen extends StatelessWidget {
  const PhotosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fotos"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Voltar à tela anterior
          },
        ),
        backgroundColor: Colors.blue, // AppBar azul
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.photo_library,
              size: 80,
              color: Colors.blue, // Ícone azul
            ),
            SizedBox(height: 16),
            Text(
              "Fotos",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Texto do título
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(
                "Acesse aqui as fotos armazenadas ou compartilhadas no aplicativo. "
                    "Você pode visualizar, editar ou compartilhar suas imagens.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black, // Texto da descrição
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
