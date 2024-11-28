part of 'home_cubit.dart';

class HomeState extends Equatable {
  final int sellectedPage;
  final PageController pageController;
  final List<Widget> pagesItem;
  const HomeState({
    this.sellectedPage = 0,
    required this.pageController,
    required this.pagesItem,
  });
  HomeState copyWith({int? sellectedPage}) => HomeState(
        pagesItem: pagesItem,
        pageController: pageController,
        sellectedPage: sellectedPage ?? this.sellectedPage,
      );
  @override
  List<Object> get props => [sellectedPage, pageController, pagesItem];
}

//final class HomeInitial extends HomeState {}
