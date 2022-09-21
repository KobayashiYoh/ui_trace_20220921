import 'package:flutter/material.dart';
import 'package:ui_trace_20220921/constants/app_color.dart';
import 'package:ui_trace_20220921/constants/app_text.dart';
import 'package:ui_trace_20220921/constants/font_family.dart';
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
            width: 56.0,
            child: Text(
              battle.won ? AppText.win : AppText.lose,
              style: TextStyle(
                color: battle.won ? AppColor.accent : AppColor.loseForeground,
                fontWeight: FontWeight.bold,
                fontFamily: FontFamily.paintball,
              ),
            ),
          ),
          Container(
            width: 40.0,
            height: 40.0,
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
          const SizedBox(width: 4.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                battle.stage,
                style: TextStyle(
                  color: battle.won ? Colors.white : AppColor.loseForeground,
                  fontSize: 12.0,
                ),
              ),
              Text(
                '${battle.point}P',
                style: TextStyle(
                  color: battle.won ? Colors.white : AppColor.loseForeground,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  fontFamily: FontFamily.paintball,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
