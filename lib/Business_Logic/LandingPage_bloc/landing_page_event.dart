part of 'landing_page_bloc.dart';

@immutable
abstract class LandingPageEvent {}

class Tabchange extends LandingPageEvent {
  final int tabindex;

  Tabchange({required this.tabindex});
}
