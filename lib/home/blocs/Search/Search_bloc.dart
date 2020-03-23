// import 'dart:async';
// import 'dart:developer' as developer;

// import 'package:bloc/bloc.dart';
// import 'package:sportcity/home/blocs/Search/index.dart';

// class SearchBloc extends Bloc<SearchEvent, SearchState> {
//   // todo: check singleton for logic in project
//   static final SearchBloc _searchBlocSingleton = SearchBloc._internal();
//   factory SearchBloc() {
//     return _searchBlocSingleton;
//   }
//   SearchBloc._internal();
  
//   @override
//   Future<void> close() async{
//     // dispose objects
//     await super.close();
//   }

//   @override
//   SearchState get initialState => UnSearchState(0);

//   @override
//   Stream<SearchState> mapEventToState(
//     SearchEvent event,
//   ) async* {
//     try {
//       yield await event.applyAsync(currentState: state, bloc: this);
//     } catch (_, stackTrace) {
//       developer.log('$_', name: 'SearchBloc', error: _, stackTrace: stackTrace);
//       yield state;
//     }
//   }
// }
