class OnboardState {
  final int currentIndex;
  final bool isCompleted;

  const OnboardState({this.currentIndex = 0, this.isCompleted = false});

  OnboardState copyWith({int? currentIndex, bool? isCompleted}) {
    return OnboardState(
      currentIndex: currentIndex ?? this.currentIndex,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}
