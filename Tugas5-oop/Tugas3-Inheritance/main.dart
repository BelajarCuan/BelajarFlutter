import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main() {
  var armorTitan = ArmorTitan();
  var attackTitan = AttackTitan();
  var beastTitan = BeastTitan();
  var human = Human();

  armorTitan.setPowerPoint(3);
  attackTitan.setPowerPoint(6);
  beastTitan.setPowerPoint(4);

  print('Armor Titan Power: ${armorTitan.getPowerPoint()}');
  print(armorTitan.terjang());

  print('Attack Titan Power: ${attackTitan.getPowerPoint()}');
  print(attackTitan.punch());

  print('Beast Titan Power: ${beastTitan.getPowerPoint()}');
  print(beastTitan.lempar());

  print(human.killAllTitan());
}
