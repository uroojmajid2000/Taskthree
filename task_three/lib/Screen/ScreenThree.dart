import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_three/cubits/image/image_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> images = context.read<ImageCubit>().state.imgList;

    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images
                .map((img) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        img,
                        width: 150.0,
                        height: 100.0,
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
