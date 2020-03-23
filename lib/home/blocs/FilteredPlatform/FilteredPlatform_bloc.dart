import 'dart:async';
import 'dart:developer' as developer;

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sportcity/home/blocs/FilteredPlatform/index.dart';
import 'package:sportcity/home/blocs/Platform/index.dart';
import 'package:sportcity/home/models/platfrom.dart';
import 'package:sportcity/home/models/platfromViewList.dart';

class FilteredPlatformBloc extends Bloc<FilteredPlatformEvent,FilteredPlatformState> {

  final PlatformBloc platformBloc;
  StreamSubscription streamSubscription;

  FilteredPlatformBloc({@required this.platformBloc}) {
    streamSubscription = platformBloc.listen((state) {
      if (state is InPlatformState) {
        add(UpdateListPlatform((platformBloc.state as InPlatformState).platformList));
      }
    });
  }

  @override
  FilteredPlatformState get initialState {
    return platformBloc.state is InPlatformState
        ? InFilteredPlatformState(
            (platformBloc.state as InPlatformState).platformList,
            PlatformViewList.news,
          )
        : UnFilteredPlatformState();
  }

  @override
  Stream<FilteredPlatformState> mapEventToState(FilteredPlatformEvent event) async* {
    if (event is UpdateFiltredPlatform){
      yield* _mapUpdateFilterToState(event);
    } else if (event is UpdateListPlatform){
      yield* _mapTodosUpdatedToState(event);
    }
  }

  Stream<FilteredPlatformState> _mapUpdateFilterToState(
    UpdateFiltredPlatform event,
  ) async* {
    if (platformBloc.state is InPlatformState) {
      yield InFilteredPlatformState(
        _mapTodosToFilteredTodos(
          (platformBloc.state as InPlatformState).platformList,
          event.viewList
        ),
        event.viewList
      );
    }
  }

  Stream<FilteredPlatformState> _mapTodosUpdatedToState(
    UpdateListPlatform event,
  ) async* {
    final visibilityFilter = state is InFilteredPlatformState
        ? (state as InFilteredPlatformState).viewList
        : PlatformViewList.news;
    yield InFilteredPlatformState(
      _mapTodosToFilteredTodos(
        (platformBloc.state as InPlatformState).platformList,
        visibilityFilter,
      ),
      visibilityFilter,
    );
  }

  //sort ListView as Fillter
  List<Platfrom> _mapTodosToFilteredTodos(
      List<Platfrom> platformList, PlatformViewList filter) {
    return platformList.where((platform) {
      if (filter == PlatformViewList.news) {
        //sort db 
        return true;
      } else if (filter == PlatformViewList.best) {
        return true;
      } else if (filter == PlatformViewList.near) {
        return true;
      } else {
        return false;
      }
    }).toList();
  }

  @override
  Future<void> close() {
    streamSubscription.cancel();
    return super.close();
  }
}
