import 'package:basketball_counter/cubits/counterState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(TeamBIncrementState());
  int teamAScore = 0;
  int teamBScore = 0;
  void TeamIncrement({required String team, required int scoreNumber}) {
    if (team == "A") {
      teamAScore += scoreNumber;
      emit(TeamAIncrementState());
    } else {
      teamBScore += scoreNumber;
      emit(TeamBIncrementState());
    }
  }
}
