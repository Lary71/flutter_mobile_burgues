import 'package:flutter/material.dart';

import 'Cardapioscreen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) => Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/cardapio.png',
            ),
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black12,
                  Colors.black87]
           ),
          ),
          child: Scaffold(
            backgroundColor: Color.fromARGB(0, 255, 255, 255),
            appBar: AppBar(
              title: const Text('Mobile Burguers!'),
              centerTitle: true,
            ),
          ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20)),
          onPressed: () {
         Navigator.push(
           context, MaterialPageRoute(
             builder: context Cardapioscreen()));
         })
        ),
      );
}
