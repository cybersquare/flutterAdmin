part of 'dashboard_bloc.dart';

@immutable
abstract class DashboardState {}

class DashboardInitial extends DashboardState {}

class DashboardSelectedState extends DashboardState {
  DashboardSelectedState({required this.showDashboard});
  final bool showDashboard;
}
