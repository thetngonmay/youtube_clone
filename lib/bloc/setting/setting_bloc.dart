import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'setting_event.dart';
part 'setting_state.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {

  SettingBloc() : super(VideoQualityState(mobileQualityType: "auto", wifiQualityType: "auto")) {

    on<ChangeVideoQualityOnMobileEvent>((event, emit) {
      if(state is VideoQualityState){
        final currentState = state as VideoQualityState;
        emit(currentState.copyWith(mobileQuality: event.qualityType));
      }
    });

    on<ChangeVideoQualityOnWifiEvent>((event, emit) {
      if(state is VideoQualityState){
        final currentState = state as VideoQualityState;
        emit(currentState.copyWith(wifiQuality: event.videoQualityType));
      }
    });
  }
}
