abstract class HomeEvent {}

class HomePageEvent implements HomeEvent {}

class PressedDetailEvent implements HomeEvent {
  final String name;
  final String description;
  final String country;
  final String sector;
  final String industry;
  const PressedDetailEvent(
      {required this.name,
      required this.description,
      required this.country,
      required this.sector,
      required this.industry});
}
