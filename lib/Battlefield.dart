
import 'dart:math';
import 'package:spaceship/SpaceShip.dart';

class BattleField {
  void startBattle(SpaceShip sp1, SpaceShip sp2) async {
    while (sp1.health > 0 && sp2.health > 0) {
      await Future.delayed(Duration(seconds: 2), () {
        final random = Random();
        int rng = random.nextInt(2);
        if (rng <= 0) {
          sp1.hit(sp2.firePower);
        } else {
          sp2.hit(sp1.firePower);
        }
      });
    }
  }
}