abstract class HomeState {}

class LoadedHomeState implements HomeState {
  final Future<List<dynamic>> company;
  LoadedHomeState({required this.company});
}

class LoadedDetailState implements HomeState {
  final List details;
  LoadedDetailState({required this.details});
}
