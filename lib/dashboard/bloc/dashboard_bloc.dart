import 'package:bloc/bloc.dart';
import 'package:cs_ecomm/dashboard/dashboard.dart';
import 'package:meta/meta.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(DashboardSelectedState(showDashboard: true));
  @override
  Stream<DashboardState> mapEventToState(DashboardEvent event) async* {
    if (event is DashboardSwitch) {
      print(event);
      yield DashboardSelectedState(showDashboard: event.isDAshboard);
    }
  }
}
