import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 93, 104, 113),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 30),
                ),
                SizedBox(height: 10),
                Text(
                  'Nome de Usuário',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Meu Perfil'),
            onTap: () {
              Navigator.pop(context);
              // navegar para página de perfil
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text('Contato'),
            onTap: () {
              Navigator.pop(context);
              // navegar para página de contato
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Sobre Nós'),
            onTap: () {
              Navigator.pop(context);
              // navegar para "Sobre Nós"
            },
          ),
        ],
      ),
    );
  }
}