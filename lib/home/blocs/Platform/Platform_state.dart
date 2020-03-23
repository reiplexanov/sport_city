import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:sportcity/home/models/platfrom.dart';

abstract class PlatformState extends Equatable {
  const PlatformState();

  @override
  List<Object> get props => [];
}

/// UnInitialized
class UnPlatformState extends PlatformState {}

/// Initialized
class InPlatformState extends PlatformState {
  
  final List<Platfrom> platformList;

  const InPlatformState ({
    this.platformList
  });


  

  @override
  String toString() => 'InPlatformState { platformList: $platformList }';
  
}

class ErrorPlatformState extends PlatformState {
  
}
