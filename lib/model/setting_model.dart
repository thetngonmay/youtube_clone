import 'package:flutter/cupertino.dart';

class SettingModel{
  final IconData icon;
  final String text;

  SettingModel(this.icon, this.text);
}

class SettingGroup{
  final String title;
  final List<SettingModel> contents;

  SettingGroup(this.title, this.contents);

}