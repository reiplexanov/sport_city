import 'dart:async';
import 'dart:developer' as developer;

import 'package:sportcity/home/blocs/Platform/index.dart';
import 'package:meta/meta.dart';
import 'package:sportcity/home/models/platfrom.dart';

@immutable
abstract class PlatformEvent {
  const PlatformEvent();

 @override
  List<Object> get props => [];
}
//загрузка списка 
class LoadPlatforms extends PlatformEvent {

}

//создание и добавление платформы в список
class AddPlatfrom extends PlatformEvent{}

//обновление информацию о плаформе
class UpdatePlatfrom extends PlatformEvent{
  final Platfrom platfrom;

  const UpdatePlatfrom({this.platfrom});

  @override
  List<Object> get props => [platfrom];

  @override
  String toString() => 'UpdatePlatfrom { platfrom: $platfrom }';
}

//удаление платфаомы
class DeletePlatfrom extends PlatformEvent{}

// добовление в избраное 
class  FovoritePlatfrom extends PlatformEvent {}

// задать оценку платформе 
class RatingPlatform extends PlatformEvent {}

class SortDataPlatfrom extends PlatformEvent {}
