part of 'setting_bloc.dart';

@immutable
sealed class SettingState {}

final class SettingInitial extends SettingState {}

class VideoQualityState extends SettingState {
  final String mobileQualityType;
  final String wifiQualityType;

  VideoQualityState({
    required this.mobileQualityType,
    required this.wifiQualityType,
  });

  VideoQualityState copyWith({
    String? mobileQuality,
    String? wifiQuality,
  }) {
    return VideoQualityState(
      mobileQualityType: mobileQuality ?? this.mobileQualityType,
      wifiQualityType: wifiQuality ?? this.wifiQualityType,
    );
  }
}
