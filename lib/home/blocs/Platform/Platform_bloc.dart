import 'dart:async';
import 'dart:developer' as developer;

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sportcity/home/blocs/Platform/index.dart';
import 'package:sportcity/home/models/platfrom.dart';
// import 'package:sportcity/home/repository/data/index.dart';

class PlatformBloc extends Bloc<PlatformEvent, PlatformState> {
  // final PlatfromRepository platfromRepository;

  // PlatformBloc({@required this.platfromRepository});

  @override
  PlatformState get initialState => InPlatformState();


  @override
  Stream<PlatformState> mapEventToState(PlatformEvent event) async* {
    final current = state;
    if (event is LoadPlatforms){
      yield* _mapLoadPlatfromtoState(event,state);
    } else if (event is AddPlatfrom){
      yield* _mapAddPlatfromtoState();
    }else if (event is UpdatePlatfrom){
      yield* _mapUpdatePlatfromtoState();
    }else if (event is DeletePlatfrom){
      yield* _mapDeletePlatfromtoState();
    }else if (event is FovoritePlatfrom){
      yield* _mapFovoritePlatfromtoState();
    } else if (event is RatingPlatform){
      yield* _mapRatingPlatfromtoState();
    } else if (event is SortDataPlatfrom){
      yield* _mapSortDataPlatfromtoState();
    }
  }


  //Получаем дату из бекенда 
  Stream<PlatformState> _mapLoadPlatfromtoState(LoadPlatforms event, state) async* {
    print('object' + state.toString());
  }
  // добавлем дату на сервер и в локльную бд 
  Stream<PlatformState> _mapAddPlatfromtoState() async* {
    
  }

  // обновляем дату
  Stream<PlatformState> _mapUpdatePlatfromtoState() async* {
    
  }
  //удаление из списка локального и запрос на сервер для удаление 
  Stream<PlatformState> _mapDeletePlatfromtoState() async* {
    
  } 
  ///добавление в избраное или удаление 
  Stream<PlatformState> _mapFovoritePlatfromtoState() async* {
    
  } 
  /// оценка платфомы
  Stream<PlatformState> _mapRatingPlatfromtoState() async* {
    
  }
  //сортировака по тегам и ближашим и лучшеем и новым 
  Stream<PlatformState> _mapSortDataPlatfromtoState() async*{

  }

}
