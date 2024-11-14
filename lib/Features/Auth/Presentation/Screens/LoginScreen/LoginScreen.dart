import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movielistapp/Features/Auth/Presentation/bloc/auth_bloc.dart';
import 'package:movielistapp/Features/Auth/Widgets/CustomizedElevaedButton.dart';
import 'package:movielistapp/Features/Auth/Widgets/CustomizedTextFormfield.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Movie",
              style: GoogleFonts.bebasNeue(
                textStyle: const TextStyle(
                  fontSize: 48,
                  color: Colors.red,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Sign In",
              style: GoogleFonts.bebasNeue(
                textStyle: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomizedTextField(controller: emailController, label: 'Email'),
            const SizedBox(
              height: 25,
            ),
            CustomizedTextField(
                controller: passwordController, label: 'password'),
            const SizedBox(
              height: 25,
            ),
            CustomElevatedButton(
                onpressed: () {
                  print(emailController.text);
                  context.read<AuthBloc>().add(SignUp(
                      emailController.text,
                      passwordController.text));
                },
                label: "Sign In")
          ],
        ),
      ),
    );
  }
}
