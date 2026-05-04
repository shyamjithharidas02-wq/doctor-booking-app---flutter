import 'package:doctor_booking_app/features/onboard/cubit/onboard_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardCubit extends Cubit<OnboardState> {
  OnboardCubit() : super(const OnboardState());

  void nextPage(int totalPages) {
    if (state.currentIndex < totalPages - 1) {
      emit(state.copyWith(currentIndex: state.currentIndex + 1));
    } else {
      emit(state.copyWith(isCompleted: true));
    }
  }

  void gotoLastPage(int totalPages) {
    emit(state.copyWith(currentIndex: totalPages - 1));
  }
}
