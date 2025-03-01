part of 'weather_bloc.dart';

sealed class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

final class WeatherInitial extends WeatherState {}

final class WeatherloadingState extends WeatherState {}

final class WeatherloadedState extends WeatherState {
  final Weather weather;

  WeatherloadedState({required this.weather});
    @override
  List<Object> get props => [weather];
}

final class WeatherErrorSate extends WeatherState {}
