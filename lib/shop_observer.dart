// ignore_for_file: public_member_api_docs, depend_on_referenced_packages

import 'package:bloc/bloc.dart';

// [BlocObserver] for the counter application which
// observes all state changes.

class ShopObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    // ignore: avoid_print
    print('${bloc.runtimeType} $change');
  }
}
