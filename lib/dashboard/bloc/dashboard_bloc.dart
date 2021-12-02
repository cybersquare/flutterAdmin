import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(DashboardInitial());
  @override
  Stream<DashboardState> mapEventToState(DashboardEvent event) async* {
    if (event is DashboardEvent) {
      print('event');
      yield DashboardSelectedState(showDashboard: true);
    }
  }
}
