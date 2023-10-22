//BUST OR BOOM! Lets see how I stack up in a coding challenge!
// ignore_for_file: unused_local_variable

import 'dart:io';
import 'FTCD.dart';

//Main
void main() {
  //Deal Cards
  List<String> keys = deck.keys.toList();
  keys.shuffle();

  //Retrieve one player card
  String first_cardface = keys[0];
  var first_cardvalue = deck[first_cardface];

  //Retrieve oen dealer card
  String dealer_one_cardface = keys[1];
  var dealer_one_cardvalue = deck[dealer_one_cardface];

  //Retrieve players second card
  String second_cardface = keys[2];
  var second_cardvalue = deck[second_cardface];

  //Retrieve dealers second card
  String dealer_two_cardface = keys[3];
  var dealer_two_cardvalue = deck[dealer_one_cardface];

  //Calculate the deal value for each hand
  int player_total = first_cardvalue! + second_cardvalue!;
  int dealer_total = dealer_one_cardvalue! + dealer_two_cardvalue!;

  print('''
  Player Hand: $first_cardface $second_cardface
  Total: $player_total


  Dealer Hand: $dealer_two_cardface
  ------------------------------------------------
  Would you care to hit? Y/N?
  ''');

  stdout.writeln('What will it be? ');
  String? player_action = stdin.readLineSync();
  //to do - add hit function and endgame.
}
