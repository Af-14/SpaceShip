import 'package:spaceship/HighSpeedSpaceShip.dart';
import 'package:spaceship/ArmoredSpaceShip.dart';
import 'package:spaceship/Battlefield.dart';



abstract class SpaceShip {
  double health = 0;
  double firePower = 0;

  SpaceShip(this.health, this.firePower);

  void hit(double enemyFirePower);

  void isDestroyed();

}

void main() {
  ArmoredSpaceShip ship1 = ArmoredSpaceShip(health: 1000.0, firePower: 50.0);

  HighSpeedSpaceShip ship2 =
  HighSpeedSpaceShip(health: 200.0, firePower: 250.0);

  BattleField().startBattle(ship1, ship2);
}



