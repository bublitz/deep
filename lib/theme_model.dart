// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'theme_preference.dart';

class ThemeModel extends ChangeNotifier {
  ThemePreferences _preferences = ThemePreferences();

  String _team = '';
  String get team => _team;

  IconData _icon = Icons.wb_sunny;
  IconData get icon => _icon;

  ThemeData _theme = ThemeData.light();
  ThemeData get theme => _theme;

  ThemeModel() {
    getPreferences();
  }

  set team(String value) {
    _team = value;
    _preferences.setTheme(value);
    notifyListeners();
  }

  void nextTeam() async {
    switch (_team) {
      case 'Dark':
        {
          _team = 'Bank';
          break;
        }
      case 'Bank':
        {
          _team = 'Adb';
          break;
        }
      case 'Adb':
        {
          _team = 'Air';
          break;
        }
      case 'Air':
        {
          _team = 'Bus';
          break;
        }
      case 'Bus':
        {
          _team = 'Corona';
          break;
        }
      case 'Corona':
        {
          _team = 'Light';
          break;
        }
      default:
        {
          _team = 'Dark';
        }
    }
    _preferences.setTheme(_team);
    updateData();
    notifyListeners();
  }

  void updateData() {
    switch (_team) {
      case 'Dark':
        {
          _icon = Icons.nightlight_round;
          _theme = ThemeData.dark();
          break;
        }
      case 'Bank':
        {
          _icon = Icons.account_balance_sharp;
          _theme = ThemeData(
            primarySwatch: Colors.deepPurple,
          );
          break;
        }
      case 'Adb':
        {
          _icon = Icons.adb;
          _theme = ThemeData(
            primarySwatch: Colors.teal,
          );
          break;
        }
      case 'Air':
        {
          _icon = Icons.air;
          _theme = ThemeData(
            primarySwatch: Colors.red,
          );
          break;
        }
      case 'Bus':
        {
          _icon = Icons.bus_alert;
          _theme = ThemeData(
            primarySwatch: Colors.orange,
          );
          break;
        }
      case 'Corona':
        {
          _icon = Icons.coronavirus;
          _theme = ThemeData(
            primarySwatch: Colors.green,
          );
          break;
        }
      default:
        {
          _icon = Icons.wb_sunny;
          _theme = ThemeData.light();
        }
    }
  }

  getPreferences() async {
    _team = await _preferences.getTheme();
    updateData();
    notifyListeners();
  }
}
