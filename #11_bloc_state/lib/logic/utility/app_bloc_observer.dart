import 'package:bloc/bloc.dart';
// import 'package:logging/logging.dart';

class AppBlocObserver extends BlocObserver {
  // final Logger _logger = Logger('AppBlocObserver');

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('onCreate -- ${bloc.runtimeType}');
    print(bloc);
  }
  //  @override
  // void onCreate(BlocBase bloc) {
  //   super.onCreate(bloc);
  //   _logger.info('onCreate -- ${bloc.runtimeType}');
  // }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    print('onEvent -- ${bloc.runtimeType}, $event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('onChange -- ${bloc.runtimeType}, $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('onError -- ${bloc.runtimeType}, $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('onClose -- ${bloc.runtimeType}');
  }
}




 

  // @override
  // void onEvent(Bloc bloc, Object? event) {
  //   super.onEvent(bloc, event);
  //   _logger.info('onEvent -- ${bloc.runtimeType}, $event');
  // }

  // @override
  // void onChange(BlocBase bloc, Change change) {
  //   super.onChange(bloc, change);
  //   _logger.info('onChange -- ${bloc.runtimeType}, $change');
  // }

  // @override
  // void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
  //   _logger.severe('onError -- ${bloc.runtimeType}, $error', error, stackTrace);
  //   super.onError(bloc, error, stackTrace);
  // }

  // @override
  // void onClose(BlocBase bloc) {
  //   super.onClose(bloc);
  //   _logger.info('onClose -- ${bloc.runtimeType}');
  // }

