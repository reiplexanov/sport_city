import 'package:equatable/equatable.dart';

abstract class SearchState extends Equatable {
  /// notify change state without deep clone state
  final int version;
  
  final List propss;
  SearchState(this.version,[this.propss]);

  /// Copy object for use in action
  /// if need use deep clone
  SearchState getStateCopy();

  SearchState getNewVersion();

  @override
  List<Object> get props => (propss);
}

/// UnInitialized
class UnSearchState extends SearchState {

  UnSearchState(int version) : super(version);

  @override
  String toString() => 'UnSearchState';

  @override
  UnSearchState getStateCopy() {
    return UnSearchState(0);
  }

  @override
  UnSearchState getNewVersion() {
    return UnSearchState(version+1);
  }
}

/// Initialized
class InSearchState extends SearchState {
  final String hello;

  InSearchState(int version, this.hello) : super(version, [hello]);

  @override
  String toString() => 'InSearchState $hello';

  @override
  InSearchState getStateCopy() {
    return InSearchState(this.version, this.hello);
  }

  @override
  InSearchState getNewVersion() {
    return InSearchState(version+1, this.hello);
  }
}

class ErrorSearchState extends SearchState {
  final String errorMessage;

  ErrorSearchState(int version, this.errorMessage): super(version, [errorMessage]);
  
  @override
  String toString() => 'ErrorSearchState';

  @override
  ErrorSearchState getStateCopy() {
    return ErrorSearchState(this.version, this.errorMessage);
  }

  @override
  ErrorSearchState getNewVersion() {
    return ErrorSearchState(version+1, this.errorMessage);
  }
}
