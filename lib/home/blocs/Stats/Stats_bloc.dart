import 'dart:async';
import 'dart:developer' as developer;

import 'dart:async';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:sportcity/home/blocs/Platform/index.dart';
import 'package:sportcity/home/blocs/Stats/index.dart';



class StatsBloc extends Bloc<StatsEvent, StatsState> {
  final PlatformBloc platformBloc;
  StreamSubscription streamSubscription;

  StatsBloc({@required this.platformBloc}) {
    streamSubscription = platformBloc.listen((state) {
      if (state is InPlatformState) {
        add(UpdateStats(state.platformList));
      }
    });
  }

  @override
  StatsState get initialState => StatsLoading();

  

  @override
  Future<void> close() {
    streamSubscription.cancel();
    return super.close();
  }

  //bloc from stats app 
  @override
  Stream<StatsState> mapEventToState(StatsEvent event) {
    // TODO: implement mapEventToState
    return null;
  }
}

