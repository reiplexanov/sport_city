
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sportcity/home/models/platfrom.dart';
import 'package:sportcity/home/models/platfromViewList.dart';

abstract class FilteredPlatformEvent {
  const FilteredPlatformEvent();
}

//ОБновление фильтра э новые лучшее ближашие э
class UpdateFiltredPlatform extends FilteredPlatformEvent {

  final PlatformViewList viewList;

  const UpdateFiltredPlatform(this.viewList);

  List<Object> get props => [viewList];

  @override
  String toString() => 'UpdateFiltredPlatform { viewList: $viewList }';
}

//обновление даты 
class UpdateListPlatform extends FilteredPlatformEvent {

  final List<Platfrom> platformList;
  
  const UpdateListPlatform(this.platformList);

  List<Object> get props => [platformList];

  @override
  String toString() => 'UpdateListPlatform { platformList: $platformList }';

}
