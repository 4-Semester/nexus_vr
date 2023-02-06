import 'package:flutter/material.dart';
import 'package:nexus_vr/classes/game.dart';

class NexusState extends ChangeNotifier {
  // Games section
  var currentGame = Game(id: 0, title: '', description: '', imageURL: '');
  List<Game> games = <Game>[];

  void getNextGame() {
    if (games.isEmpty) {
      return;
    }
    var i = 0;
    if (currentGame.title != '') {
      i = games.indexWhere((element) => element.id == currentGame.id);
      i++;
      if (i >= games.length) {
        i = 0;
      }
      currentGame = games[i];
    }
    notifyListeners();
  }

  void getPreviousGame() {
    if (games.isEmpty) {
      return;
    }
    var i = 0;
    if (currentGame.title != '') {
      i = games.indexWhere((element) => element.id == currentGame.id);
      i--;
      if (i < 0) {
        i = games.length - 1;
      }
      currentGame = games[i];
    }
    notifyListeners();
  }

  // Favorites section
  var favorites = <Game>{};

  void toggleFavorite() {
    if (favorites.contains(currentGame)) {
      favorites.remove(currentGame);
    } else {
      favorites.add(currentGame);
    }
    notifyListeners();
  }
}
