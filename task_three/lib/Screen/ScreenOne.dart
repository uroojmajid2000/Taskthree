import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_three/cubits/biodata/biodata_cubit.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
        centerTitle: true,
      ),
      body: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: firstNameController,
              decoration: InputDecoration(
                icon: const Icon(Icons.person),
                hintText: 'Enter your first name',
                labelText: 'First Name',
              ),
            ),
            TextFormField(
              controller: lastNameController,
              decoration: InputDecoration(
                icon: const Icon(Icons.person),
                hintText: 'Enter your last name',
                labelText: 'Lirst Name',
              ),
            ),
            TextFormField(
              controller: ageController,
              decoration: InputDecoration(
                icon: const Icon(Icons.handshake),
                hintText: 'Enter your Age',
                labelText: 'Age',
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                child: OutlinedButton(
                  onPressed: () => {
                  
                 
                  
                   context.read<BiodataCubit>().data(
                    firstNameController.text, 
                    lastNameController.text,
                     double.parse(ageController.text)
                     ),

 Navigator.pushNamed(context, '/screentwo'),
                  },
                  child: Text('Submit'),
                
                )),
          ],
        ),
      ),
    );
  }
}
