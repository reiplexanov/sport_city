// import 'dart:async';
// import 'dart:developer' as developer;

// import 'package:sportcity/home/blocs/Search/index.dart';
// import 'package:meta/meta.dart';

// @immutable
// abstract class SearchEvent {
//   Future<SearchState> applyAsync(
//       {SearchState currentState, SearchBloc bloc});
//   final SearchRepository _searchRepository = SearchRepository();
// }

// class UnSearchEvent extends SearchEvent {
//   @override
//   Future<SearchState> applyAsync({SearchState currentState, SearchBloc bloc}) async {
//     return UnSearchState(0);
//   }
// }

// class LoadSearchEvent extends SearchEvent {
   
//   final bool isError;
//   @override
//   String toString() => 'LoadSearchEvent';

//   LoadSearchEvent(this.isError);

//   @override
//   Future<SearchState> applyAsync(
//       {SearchState currentState, SearchBloc bloc}) async {
//     try {
//       if (currentState is InSearchState) {
//         return currentState.getNewVersion();
//       }
//       await Future.delayed(Duration(seconds: 2));
//       this._searchRepository.test(this.isError);
//       return InSearchState(0, 'Hello world');
//     } catch (_, stackTrace) {
//       developer.log('$_', name: 'LoadSearchEvent', error: _, stackTrace: stackTrace);
//       return ErrorSearchState(0, _?.toString());
//     }
//   }
// }
