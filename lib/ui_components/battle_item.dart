import 'package:flutter/material.dart';
import 'package:ui_trace_20220921/constants/app_color.dart';
import 'package:ui_trace_20220921/constants/app_text.dart';
import 'package:ui_trace_20220921/models/battle.dart';

class BattleItem extends StatelessWidget {
  final Battle battle;
  const BattleItem({Key? key, required this.battle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
      decoration: const BoxDecoration(
        color: AppColor.itemBackground,
        border: Border(
          bottom: BorderSide(
            color: AppColor.background,
          ),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 64.0,
            child: Text(
              battle.won ? AppText.win : AppText.lose,
              style: TextStyle(
                color: battle.won ? AppColor.accent : AppColor.loseForeground,
              ),
            ),
          ),
          Container(
            width: 36.0,
            height: 36.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  battle.imagePath,
                ),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                battle.stage,
                style: TextStyle(
                  color: battle.won ? Colors.white : AppColor.loseForeground,
                ),
              ),
              Text(
                '${battle.point}P',
                style: TextStyle(
                  color: battle.won ? Colors.white : AppColor.loseForeground,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
