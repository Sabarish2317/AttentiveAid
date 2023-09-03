part of 'landing_page_bloc.dart';

@immutable
abstract class LandingPageState {
  final int tabindex;

  const LandingPageState({required this.tabindex});
}

class LandingPageInitial extends LandingPageState {
  const LandingPageInitial({required super.tabindex});
}
