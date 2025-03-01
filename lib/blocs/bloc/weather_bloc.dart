import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:wather_app/helpers/const/apikey.dart';
import 'package:weather/weather.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial()) {
    on<WeatherEvent>((event, emit) async {
      if (event is GetWeather) {
        emit(WeatherloadingState());
        try {
          
          WeatherFactory wf =
              WeatherFactory(apiKey, language: Language.ENGLISH);
          final weather =
              await wf.currentWeatherByLocation(event.p.latitude,event.p.longitude);
          emit(WeatherloadedState(weather: weather));
          print(weather);
        } catch (e) {
          print(e);
          emit(WeatherErrorSate());
        }
      }
    });
  }
}
