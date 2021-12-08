part of 'dashboard_bloc.dart';

@immutable
abstract class DashboardEvent {}

class DashboardSwitch extends DashboardEvent {
  DashboardSwitch({required this.isDAshboard});
  final bool isDAshboard;
}
