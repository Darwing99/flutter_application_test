import 'package:flutter/material.dart';
import 'package:flutter_application_test/widgets/custom_input_field.dart';
import 'package:flutter_application_test/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'username': 'username',
      'email': 'email',
    };
    String username = "uth";
    String password = "uth123";
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar'),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(20),
            child: Form(
              child: Column(
                children: [
                  CustomInputField(
                    formProperty: 'username',
                    formValues: formValues,
                    hintText: 'usuario',
                    labelText: "Ingrese  usuario",
                    icon: Icons.email_outlined,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomInputField(
                    obscureText: true,
                    textInputType: TextInputType.visiblePassword,
                    formProperty: 'password',
                    formValues: formValues,
                    hintText: 'Contraseña',
                    labelText: "Ingrese contraseña de usuario",
                    icon: Icons.lock,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                        );
                      },
                      child: const Text("Iniciar Sesión"))
                ],
              ),
            )),
      ),
    );
  }
}
