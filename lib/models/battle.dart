import 'package:flutter/material.dart';

@immutable
class Battle {
  final bool won;
  final String imagePath;
  final String stage;
  final int point;

  const Battle({
    required this.won,
    required this.imagePath,
    required this.stage,
    required this.point,
  });
}
