import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carte de Visite',
      home: const CarteVisite(),
    );
  }
}

class CarteVisite extends StatelessWidget {
  const CarteVisite({super.key});

  static const String nom = 'Aya Mejdoub';
  static const String titre = 'Étudiante Business Intelligence';
  static const String formation = 'Business Intelligence - ITBS';
  static const String email = 'aya.mejdoub@itbs.com';
  static const String telephone = '+216 55 217 309';

  void _afficherDialogue(BuildContext context, String titre, String contenu) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(titre),
        content: Text(contenu, style: const TextStyle(fontSize: 16)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Fermer'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      appBar: AppBar(
        title: const Text(
          'Carte de Visite',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink.shade100,
        actions: [
          IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: Center(
        child: Card(
          elevation: 8,
          margin: const EdgeInsets.all(24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.pinkAccent,
                  child: CircleAvatar(
                    radius: 56,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  nom,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                    fontFamily: 'Georgia',
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  titre,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  formation,
                  style: TextStyle(fontSize: 14, color: Colors.black87),
                ),
                const SizedBox(height: 4),
                const Text(
                  email,
                  style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                ),
                const Divider(height: 32, thickness: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      iconSize: 36,
                      color: Colors.pink,
                      icon: const Icon(Icons.email),
                      onPressed: () =>
                          _afficherDialogue(context, 'Email', email),
                    ),
                    IconButton(
                      iconSize: 36,
                      color: Colors.pink,
                      icon: const Icon(Icons.phone),
                      onPressed: () =>
                          _afficherDialogue(context, 'Téléphone', telephone),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}