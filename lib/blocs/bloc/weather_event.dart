part of 'weather_bloc.dart';

sealed class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object> get props => [];
}

class GetWeather extends WeatherEvent {
  final Position p;
  GetWeather({required this.p});
    @override
  List<Object> get props => [p];
}
