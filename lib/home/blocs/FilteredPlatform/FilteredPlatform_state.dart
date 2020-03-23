import 'package:equatable/equatable.dart';
import 'package:sportcity/home/models/platfrom.dart';
import 'package:sportcity/home/models/platfromViewList.dart';

abstract class FilteredPlatformState extends Equatable {


  //передлать на репозиторий
  const FilteredPlatformState();

  @override
  List<Object> get props => [];
}

/// UnInitialized
class UnFilteredPlatformState extends FilteredPlatformState {}

/// Initialized
class InFilteredPlatformState extends FilteredPlatformState {
  
  final List<Platfrom> platformList;
  final PlatformViewList viewList;

  const InFilteredPlatformState(
    this.platformList,
    this.viewList,
  );

  @override
  List<Object> get props => [platformList, viewList];

  @override
  String toString() {
    return 'InFilteredPlatformState { platformList: $platformList, viewList: $viewList }';
  }
}

