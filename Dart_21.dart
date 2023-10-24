//BUST OR BOOM! Lets see how I stack up in a coding challenge!
//This is just a game of 21 I'm working on. Nothing special and surely full of bugs. I am fully aware it does not accurately follow casino black jack.
//Please find it in your heart to forgive me.

// ignore_for_file: unused_local_variable

import 'dart:io';
import 'FTCD.dart';

//Main
void main() {
  //Main loop

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

  int currentcard = 4;
  String hitcardface = keys[currentcard];
  var hitcardvalue = deck[hitcardface];

  hitme() {
    if (player_total < 21) {
      print('You Drew a $hitcardface');
      print('Hit again? Y/N');
      currentcard++;
      int newtotal = player_total + hitcardvalue!;
      return newtotal;
    } else {
      print('You loose!');
    }
  }

  bool player_win = player_total > dealer_total;

  bool dealer_win = !player_win;

  bool draw = player_total == dealer_total;

  String flop = 'Dealers hand $dealer_one_cardface $dealer_two_cardface';

  if (player_win == true) {
    print(
        'You won and are the rootiest tootiest card player in the wild wild west!');
    print(flop);
  } else if (dealer_win == true) {
    print('Sorry pardner, You are just out of luck!');
    print(flop);
  } else if (draw == true) {
    print('Looks like this heres a draw!');
    print(flop);
  } else {
    print('something is wrong!');
  }
}
