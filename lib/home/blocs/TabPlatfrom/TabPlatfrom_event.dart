
import 'package:equatable/equatable.dart';
import 'package:sportcity/home/models/platform_tab.dart';


abstract class PlatfromEventTab extends Equatable {
  const PlatfromEventTab();
}

class UpdateTab extends PlatfromEventTab {
  final PlatformTab tab;

  const UpdateTab(this.tab);

  @override
  List<Object> get props => [tab];

  @override
  String toString() => 'UpdateTab { tab: $tab }';
}