import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

/// [AppBlocObserver] is a custom [BlocObserver] that logs changes and errors
/// in the blocs.
class AppBlocObserver extends BlocObserver {
  /// Creates an instance of [AppBlocObserver].
  const AppBlocObserver();

  /// Logs the changes in the blocs.
  ///
  /// Overrides the [onChange] method in the [BlocObserver] class.
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  /// Logs the errors in the blocs.
  ///
  /// Overrides the [onError] method in the [BlocObserver] class.
  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

/// Initializes the application.
///
/// Sets the [FlutterError.onError] handler, the [Bloc.observer], initializes
/// Firebase and runs the app.
Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();

  // Add cross-flavor configuration here
  

  runApp(await builder());
}
