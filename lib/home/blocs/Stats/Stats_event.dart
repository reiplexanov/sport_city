import 'package:equatable/equatable.dart';
import 'package:sportcity/home/models/platfrom.dart';

abstract class StatsEvent extends Equatable {
  const StatsEvent();
}

class UpdateStats extends StatsEvent {
  final List<Platfrom> platfrom;

  const UpdateStats(this.platfrom);

  @override
  List<Object> get props => [platfrom];

  @override
  String toString() => 'UpdateStats { platfrom: $platfrom }';
}
