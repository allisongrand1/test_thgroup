import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_thgroup/module_bloc/bloc_event.dart';
import 'package:test_thgroup/module_bloc/bloc_state.dart';
import 'package:test_thgroup/module_data/repository/repository.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(LoadedHomeState(company: getIt<Future<List<dynamic>>>())) {
    on<HomePageEvent>((event, emit) =>
        emit(LoadedHomeState(company: getIt<Future<List<dynamic>>>())));
    on<PressedDetailEvent>((event, emit) => emit(LoadedDetailState(details: [
          event.name,
          event.description,
          event.country,
          event.industry,
          event.sector
        ])));
  }
}
