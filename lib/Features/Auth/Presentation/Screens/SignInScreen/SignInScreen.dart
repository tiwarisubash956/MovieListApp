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
  const Signinscreen({super.key});

  @override
  State<Signinscreen> createState() => _SigninscreenState();
}

class _SigninscreenState extends State<Signinscreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _signinformKey = GlobalKey<FormState>();

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
          return SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Form(
                  key: _signinformKey,
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
                            if (_signinformKey.currentState!.validate()) {
                              context.read<AuthBloc>().add(Signin(
                                  emailController.text,
                                  passwordController.text));
                            }
                          },
                          label: "Sign In"),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Dont Have an Account?",
                              style: GoogleFonts.breeSerif(
                                textStyle: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  letterSpacing: 2.0,
                                ),
                              )),
                          GestureDetector(
                            onTap: () {
                              context.router.push(const SignUpRoute());
                            },
                            child: Text("SignUp",
                                style: GoogleFonts.breeSerif(
                                  textStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    letterSpacing: 2.0,
                                  ),
                                )),
                          )
                        ],
                      ),
                       const SizedBox(
                        height: 12,
                      ),
                      GestureDetector(
                        onTap: () {
                          context.router.push(const ForgetPasswordRoute());
                        },
                        child: Text("Forget Password?",
                            style: GoogleFonts.breeSerif(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                letterSpacing: 2.0,
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
