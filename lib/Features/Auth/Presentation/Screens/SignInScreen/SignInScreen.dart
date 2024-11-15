import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movielistapp/Configuration/routes/app_router.gr.dart';
import 'package:movielistapp/Features/Auth/Presentation/bloc/auth_bloc.dart';
import 'package:movielistapp/Features/Auth/Widgets/CustomizedElevaedButton.dart';
import 'package:movielistapp/Features/Auth/Widgets/CustomizedTextFormfield.dart';

@RoutePage()
class Signinscreen extends StatefulWidget {
  Signinscreen({super.key});

  @override
  State<Signinscreen> createState() => _SigninscreenState();
}

class _SigninscreenState extends State<Signinscreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is Authenticated) {
            context.router.replace(const HomeRoute());
          }
          if (state is AuthError) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.mesage)));
          }
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "MovieFlex",
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
                CustomizedTextField(
                    controller: emailController, label: 'Email'),
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
                      context.read<AuthBloc>().add(Signin(
                          emailController.text, passwordController.text));
                    },
                    label: "Sign In")
              ],
            ),
          );
        },
      ),
    );
  }
}
