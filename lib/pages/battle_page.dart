import 'package:flutter/material.dart';
import 'package:ui_trace_20220921/constants/app_text.dart';
import 'package:ui_trace_20220921/constants/image_path.dart';
import 'package:ui_trace_20220921/models/battle.dart';
import 'package:ui_trace_20220921/ui_components/battle_item.dart';

class BattlePage extends StatelessWidget {
  const BattlePage({Key? key}) : super(key: key);

  final List<Battle> battles = const [
    Battle(
      won: true,
      imagePath: ImagePath.icon,
      stage: AppText.namero,
      point: 1342,
    ),
    Battle(
      won: true,
      imagePath: ImagePath.icon,
      stage: AppText.namero,
      point: 1056,
    ),
    Battle(
      won: true,
      imagePath: ImagePath.icon,
      stage: AppText.chozame,
      point: 1743,
    ),
    Battle(
      won: false,
      imagePath: ImagePath.icon,
      stage: AppText.chozame,
      point: 1128,
    ),
    Battle(
      won: true,
      imagePath: ImagePath.icon,
      stage: AppText.namero,
      point: 1058,
    ),
    Battle(
      won: true,
      imagePath: ImagePath.icon,
      stage: AppText.namero,
      point: 1342,
    ),
    Battle(
      won: true,
      imagePath: ImagePath.icon,
      stage: AppText.namero,
      point: 1056,
    ),
    Battle(
      won: true,
      imagePath: ImagePath.icon,
      stage: AppText.chozame,
      point: 1743,
    ),
    Battle(
      won: false,
      imagePath: ImagePath.icon,
      stage: AppText.chozame,
      point: 1128,
    ),
    Battle(
      won: true,
      imagePath: ImagePath.icon,
      stage: AppText.namero,
      point: 1058,
    ),
    Battle(
      won: true,
      imagePath: ImagePath.icon,
      stage: AppText.namero,
      point: 1342,
    ),
    Battle(
      won: true,
      imagePath: ImagePath.icon,
      stage: AppText.namero,
      point: 1056,
    ),
    Battle(
      won: true,
      imagePath: ImagePath.icon,
      stage: AppText.chozame,
      point: 1743,
    ),
    Battle(
      won: false,
      imagePath: ImagePath.icon,
      stage: AppText.chozame,
      point: 1128,
    ),
    Battle(
      won: true,
      imagePath: ImagePath.icon,
      stage: AppText.namero,
      point: 1058,
    ),
    Battle(
      won: true,
      imagePath: ImagePath.icon,
      stage: AppText.namero,
      point: 1342,
    ),
    Battle(
      won: true,
      imagePath: ImagePath.icon,
      stage: AppText.namero,
      point: 1056,
    ),
    Battle(
      won: true,
      imagePath: ImagePath.icon,
      stage: AppText.chozame,
      point: 1743,
    ),
    Battle(
      won: false,
      imagePath: ImagePath.icon,
      stage: AppText.chozame,
      point: 1128,
    ),
    Battle(
      won: true,
      imagePath: ImagePath.icon,
      stage: AppText.namero,
      point: 1058,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
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
      body: ListView.builder(
        itemCount: battles.length,
        itemBuilder: (BuildContext context, int index) =>
            BattleItem(battle: battles[index]),
      ),
    );
  }
}
