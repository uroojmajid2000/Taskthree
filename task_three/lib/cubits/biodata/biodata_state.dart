// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'biodata_cubit.dart';

class BiodataState extends Equatable {
  final String firstname;
  final String lastname;
  final double age;

  BiodataState(
    {
      required this.firstname,
      required this.lastname,
      required this.age,
      }
  );

factory BiodataState.initial() => BiodataState(
  firstname: 'Urooj',
  lastname: 'majid',
  age: 21
  );

  @override
  List<Object> get props => [
    firstname,
    lastname,
    age
    ];

 


  BiodataState copyWith({
    String? firstname,
    String? lastname,
    double? age,
  }) {
    return BiodataState(
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      age: age ?? this.age,
    );
  }
}

