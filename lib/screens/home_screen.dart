import 'package:flutter/material.dart';
import 'package:flutter_application_test/widgets/custom_input_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'username': 'username',
      'email': 'email',

    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar'),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10),
            child: Form(
              child: Column(
                children: [


                ],
              ),
            )),
      ),
    );
  }
}
