
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

 
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          const Expanded(
            child: ColoredBox(color: Color.fromARGB(241, 5, 139, 249), child: Center(child: Text('Hogwarts Legacy'))),
          ),
          const Divider(height: 20, thickness: 10, indent: 20, endIndent: 0, color: Color.fromARGB(255, 255, 254, 254)),
        
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Align(
              alignment: AlignmentDirectional.centerStart,
    
            ))]));
            }}