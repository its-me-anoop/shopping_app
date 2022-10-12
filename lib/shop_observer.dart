import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// [BlocObserver] for the counter application which
/// observes all state changes.

class ShopObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);

    if (kDebugMode) {
      print('${bloc.runtimeType} $change');
    }
  }
}
