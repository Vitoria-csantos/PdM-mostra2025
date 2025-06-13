import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return const Drawer();
    child: ListView(
      children: [
        UserAccountsDrawerHeader(accountName: Text(''), accountEmail: Text (''))
      ],
      )
  }
}