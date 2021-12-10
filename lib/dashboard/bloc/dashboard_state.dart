part of 'dashboard_bloc.dart';

@immutable
abstract class DashboardState {}

class DashboardSelectedState extends DashboardState {
  DashboardSelectedState({required this.showDashboard});
  final bool showDashboard;
}
