import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobile_burgues/Item.dart';

class Cardapioscreen extends StatelessWidget {
  Cardapioscreen({super.key});
  final List<Item> items = [
    Item(
      title: 'X-tudo',
      image: 'assets/X-tudo.png',
      description:
          'Pão, carne, queijo cheedar, queijo muzzarela, ovo, alface e tomate.',
      value: 20.90,
    ),
    Item(
      title: 'X-bacon',
      image: 'assets/X-bacon.png',
      description:
          'Pão, bacon, cebola caramelizada, queijo cheedar, carne, tomate e alface.',
      value: 25.90,
    ),
    Item(
      title: 'X-Bomba',
      image: 'assets/X-bomba.png',
      description:
          'Pão, Double carne, cebola, queijo cheedar, molho especial, presuto defumado, alface e tomate.',
      value: 59.90,
    ),
    Item(
      title: 'X-Chicken',
      image: 'assets/X-frango.png',
      description: 'Pão, frango, queijo prato, cebola, alface e tomate.',
      value: 24.90,
    ),
    Item(
      title: 'Porção Fritas pequena',
      image: 'assets/p1_batata.png',
      description: 'Batatas fritas e sal Pequena.',
      value: 7.90,
    ),
    Item(
      title: 'Porção Fritas média',
      image: 'assets/p2_batata.png',
      description: 'Batatas fritas e sal Média.',
      value: 14.90,
    ),
    Item(
      title: 'Porção Fritas grande',
      image: 'assets/p3_batata.png',
      description: 'Batatas fritas e sal Grande.',
      value: 21.90,
    ),
    Item(
      title: 'Fritas Cheedar',
      image: 'assets/p2_CB.png',
      description: 'Batatas fritas com cheedar.',
      value: 25.90,
    ),
    Item(
      title: 'Fritas Calabresa',
      image: 'assets/p2_BC.png',
      description: 'Batatas fritas com calabresa.',
      value: 25.90,
    ),
    Item(
      title: 'Fritas Bacon e Cheedar',
      image: 'assets/p2_BB.png',
      description: 'Batatas fritas com Cheedar e Bacon.',
      value: 28.90,
    ),
    Item(
      title: 'Fritas Calabresa e Cheedar',
      image: 'assets/p2_BBC.png',
      description: 'Batatas fritas com Cheedar e Calabresa.',
      value: 28.90,
    ),
    Item(
      title: 'Refri Lata',
      image: 'assets/refri_lata.png',
      description:
          'Refrigerantes 350ml : Fanta, Guaraná, Coca Cola, Pespsi, Sprit',
      value: 5.00,
    ),
    Item(
      title: 'Refri 600',
      image: 'assets/refri_600ml.png',
      description:
          'Refrigerantes 600ml : Fanta, Guaraná, Coca Cola, Pespsi, Sprit',
      value: 11.90,
    ),
    // Restante dos itens
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cardapio',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 251, 251),
            fontSize: 28.5,
            fontWeight: FontWeight.normal,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 0, 0, 0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: ListTile(
                      leading: Image.asset(
                        items[index].image,
                        width: 180,
                        height: 180,
                      ),
                      title: Text(items[index].title),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(items[index].description),
                          const SizedBox(height: 8),
                          Text(
                            'R\$ ${items[index].value.toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
