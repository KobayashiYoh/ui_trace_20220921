import 'package:flutter/material.dart';

class BattlePage extends StatelessWidget {
  const BattlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(width: 32.0),
            Icon(Icons.compare_arrows),
            Text('レギュラーマッチ'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'おわる',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
    );
  }
}
