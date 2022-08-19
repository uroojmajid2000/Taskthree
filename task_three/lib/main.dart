import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_three/Screen/ScreenOne.dart';
import 'package:task_three/Screen/ScreenThree.dart';
import 'package:task_three/Screen/ScreenTwo.dart';
import 'package:task_three/cubits/biodata/biodata_cubit.dart';
import 'package:task_three/cubits/image/image_cubit.dart';
import 'Screen/ScreenOne.dart';
import 'Screen/ScreenTwo.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<BiodataCubit>(
        create: ((context) => BiodataCubit()),
      ),
      BlocProvider<ImageCubit>(
        create: ((context) => ImageCubit()),
      ),
    ],
    child: MaterialApp(
      initialRoute: '/screenthree',
      routes: {
        '/screenone': (context) => ScreenOne(),
        '/screentwo': (context) => ScreenTwo(),
        '/screenthree': (context) => ScreenThree(),
      },
    ),
  ));
}
