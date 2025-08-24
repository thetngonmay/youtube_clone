part of 'setting_bloc.dart';

@immutable
sealed class SettingEvent {}

final class ChangeVideoQualityOnMobileEvent extends SettingEvent{
  final String qualityType;

  ChangeVideoQualityOnMobileEvent(this.qualityType);

}

final class ChangeVideoQualityOnWifiEvent extends SettingEvent{
  final String videoQualityType;

  ChangeVideoQualityOnWifiEvent(this.videoQualityType);

}
