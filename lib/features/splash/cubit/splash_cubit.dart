import 'package:bloc/bloc.dart';
import 'package:doctor_booking_app/features/splash/cubit/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 3));

    // TODO: replace with real logic later
    bool isFirstTime = true;

    if (isFirstTime) {
      emit(SplashNavigateToOnboard());
    } else {
      emit(SplashNavigateToHome());
    }
  }
}
