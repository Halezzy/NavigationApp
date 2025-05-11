import 'package:flutter/material.dart';
import 'drawer_screens/profile_screen.dart';
import 'drawer_screens/videos_screen.dart';
import 'drawer_screens/photos_screen.dart';
import 'drawer_screens/contacts_screen.dart';
import 'drawer_screens/settings_screen.dart';
import 'bottom_nav_screens/home_screen.dart';
import 'bottom_nav_screens/feed_screen.dart';
import 'bottom_nav_screens/network_screen.dart';
import 'bottom_nav_screens/marketplace_screen.dart';
import 'bottom_nav_screens/notifications_screen.dart';
import 'login_screen.dart';

class UserHomeScreen extends StatefulWidget {
  final String userName;
  const UserHomeScreen({super.key, required this.userName});

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  int _selectedIndex = 0;

  final _bottomScreens = const [
    HomeScreen(),
    FeedScreen(),
    NetworkScreen(),
    MarketPlaceScreen(),
    NotificationsScreen(),
  ];

  void _onBottomTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Bem-vindo, ${widget.userName}"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.sailing, color: Colors.white, size: 28), // Logo do canto superior direito
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.blueAccent),
              child: Row(
                children: [
                  // Ícone/foto do usuário
                  const CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 40, color: Colors.blueAccent),
                  ),
                  const SizedBox(width: 16),

                  // Nome do usuário (dinâmico)
                  Expanded(
                    child: Text(
                      widget.userName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Perfil"),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfileScreen())),
            ),
            ListTile(
              leading: const Icon(Icons.video_collection),
              title: const Text("Vídeos"),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const VideosScreen())),
            ),
            ListTile(
              leading: const Icon(Icons.photo),
              title: const Text("Fotos"),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const PhotosScreen())),
            ),
            ListTile(
              leading: const Icon(Icons.contacts),
              title: const Text("Contatos"),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ContactsScreen())),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Configurações"),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const SettingsScreen())),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text("Sair"),
              onTap: () {
                // Limpa o histórico de navegação e direciona para a tela de login
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: _bottomScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onBottomTapped,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.feed), label: "Feed"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Network"),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: "Market"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notificações"),
        ],
      ),
    );
  }
}
