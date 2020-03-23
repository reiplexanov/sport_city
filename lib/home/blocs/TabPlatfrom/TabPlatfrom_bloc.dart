import 'dart:async';
import 'dart:developer' as developer;

import 'package:bloc/bloc.dart';
import 'package:sportcity/home/blocs/TabPlatfrom/index.dart';
import 'package:sportcity/home/models/platform_tab.dart';

class TabPlatfromBloc extends Bloc<PlatfromEventTab, PlatformTab> {
  @override
  PlatformTab get initialState => PlatformTab.home;

  @override
  Stream<PlatformTab> mapEventToState(PlatfromEventTab event) async* {
    if (event is UpdateTab){
      yield event.tab;
    }
  }
 
}
