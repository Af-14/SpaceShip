import 'dart:math';
import 'package:spaceship/SpaceShip.dart';

class HighSpeedSpaceShip extends SpaceShip {
  HighSpeedSpaceShip({health,firePower}) : super(health,firePower);

  @override
  void hit(double enemyFirePower) {
    final random = Random();
    bool rng = random.nextBool();
    print('Armor Spaceship attacks High Speed Spaceship');
    if (rng == true) {
      health = health - enemyFirePower;
      print('Damage inflicted: $enemyFirePower');
    } else {
      print('Dodged, no damage inflicted !');
    }

    isDestroyed();
  }

  @override
  void isDestroyed() {
    if (health <= 0) {
      print('');
      print('High Speed Spaceship has destroyed');
      print('Armor Spaceship is the winner !');
    } else {
      print('Remaining health: $health');
      print('');
    }
  }
}
