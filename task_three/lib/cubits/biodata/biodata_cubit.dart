import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'biodata_state.dart';

class BiodataCubit extends Cubit<BiodataState> {
  BiodataCubit() : super(BiodataState.initial());

  void data(String newFname, String newLname, double newAge) {
    emit(state.copyWith(firstname: newFname, lastname: newLname, age: newAge));
  }
}
