import 'package:flutter/material.dart';

import 'main.dart';

class pageView extends StatelessWidget {
  final Item s;
  const pageView({super.key, required this.s,context});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${s.name}')),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Card(
              child: InteractiveViewer(
                maxScale: 10,
                child: Image.network(
                  s.url,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            s.name,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            s.price,
            style: const TextStyle(fontSize: 20, color: Colors.grey),
          )
        ],
      ),
    );
  }
}

