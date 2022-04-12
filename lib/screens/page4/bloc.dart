import 'package:navigation_test/base/base_bloc.dart';
import 'package:navigation_test/screens/page5/page5.dart';

import 'home_bloc.dart';

abstract class HomeBlocPage4 extends BaseBloc {
  factory HomeBlocPage4() => _HomeBloc();

  void navigateToDetails();

  void incrementCounter();
}

class _HomeBloc extends BlocImpl implements HomeBlocPage4 {
  _HomeBloc();

  final _screenData = HomeDataPage4.init();

  @override
  void initState() {
    super.initState();
    updateData();
  }

  final bool _isLoading = false;

  @override
  void navigateToDetails() {
    appNavigator.push(FifthPage.page());
  }

  void updateData() {
    super.handleData(
      isLoading: _isLoading,
      data: _screenData.copy(),
    );
  }

  @override
  void incrementCounter() {
    _screenData.counter++;
    updateData();
  }

  @override
  void dispose() {
    super.dispose();
  }
}