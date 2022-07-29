import 'dart:math';

import 'package:spaceship/SpaceShip.dart';

class ArmoredSpaceShip extends SpaceShip {
  ArmoredSpaceShip({health,firePower}) : super(health,firePower);

  @override
  void hit(double enemyFirePower) {
    final random = Random();
    int rng = 1 + random.nextInt(40);
    double hit = rng/100;
    double damage = enemyFirePower - (enemyFirePower * hit);
    health = health - damage;
    print('High Speed Spaceship attacks Armor Space Ship');
    print('Damage inflicted: $damage');

    isDestroyed();
    }

  @override
  void isDestroyed() {
    if (health <= 0) {
      print('');
      print('Armor Space Ship has destroyed');
      print('High Speed Spaceship is the winner !');
    } else {
      print('Armor Space Ship remaining health: $health');
      print('');
    }
  }

  }

