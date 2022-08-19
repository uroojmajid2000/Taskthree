import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_three/cubits/biodata/biodata_cubit.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: AppBar(
        title: Text('Screen One Data'),
        centerTitle: true,
      ),

body: Container(
      width: 400,
      height: 200,
      
      child: Column(
        children: [
          Text(
            context.watch<BiodataCubit>().state.firstname,
           
          ),
          Text(
            context.watch<BiodataCubit>().state.lastname,
           
          ),
          Text(
            context.watch<BiodataCubit>().state.age.toString(),
           
          ),

Image.asset('asset/'),

        ],
      ),
    ),

    );
    
   

    
  }
}