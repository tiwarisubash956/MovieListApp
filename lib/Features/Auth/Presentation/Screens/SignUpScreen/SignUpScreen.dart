import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movielistapp/Configuration/routes/app_router.gr.dart';
import 'package:movielistapp/Features/Auth/Presentation/bloc/auth_bloc.dart';
import 'package:movielistapp/Features/Auth/Widgets/CustomizedElevaedButton.dart';
import 'package:movielistapp/Features/Auth/Widgets/CustomizedTextFormfield.dart';

@RoutePage()
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _signupformKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is SignupSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Created Account Succesfully")));
          context.router.push(Signinscreen());
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: _signupformKey,
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
                      "Sign Up",
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                              .hasMatch(value)) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                        controller: emailController,
                        label: 'Email'),
                    const SizedBox(
                      height: 25,
                    ),
                    CustomizedTextField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a password';
                          } else if (value.length < 8) {
                            return 'Password must be at least 8 characters';
                          } else if (!RegExp(r'[A-Z]').hasMatch(value)) {
                            return 'Password must contain an uppercase letter';
                          } else if (!RegExp(r'[0-9]').hasMatch(value)) {
                            return 'Password must contain a number';
                          }
                          return null;
                        },
                        controller: passwordController,
                        label: 'password'),
                    const SizedBox(
                      height: 25,
                    ),
                    CustomElevatedButton(
                        onpressed: () {
                          if (_signupformKey.currentState!.validate()) {
                            context.read<AuthBloc>().add(SignUp(
                                emailController.text, passwordController.text));
                          }
                        },
                        label: "Sign Up")
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
