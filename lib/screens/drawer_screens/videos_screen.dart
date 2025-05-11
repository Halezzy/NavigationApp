import 'package:flutter/material.dart';

class VideosScreen extends StatelessWidget {
  const VideosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vídeos"),
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
              Icons.video_library,
              size: 80,
              color: Colors.blue, // Ícone azul
            ),
            SizedBox(height: 16),
            Text(
              "Vídeos",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Título em preto
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(
                "Acompanhe vídeos compartilhados por você ou por outros usuários, "
                    "incluindo tutoriais, dicas e conteúdo da comunidade.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black, // Texto em preto
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
