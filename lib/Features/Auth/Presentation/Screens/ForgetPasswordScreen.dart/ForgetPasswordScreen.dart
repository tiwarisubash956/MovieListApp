import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movielistapp/Features/Auth/Presentation/bloc/auth_bloc.dart';
import 'package:movielistapp/Features/Auth/Widgets/CustomizedElevaedButton.dart';
import 'package:movielistapp/Features/Auth/Widgets/CustomizedTextFormfield.dart';

@RoutePage()
class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final TextEditingController emailcontroller = TextEditingController();
  // ignore: non_constant_identifier_names
  final _verifyformKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Forget Password",
            style: GoogleFonts.breeSerif(
                textStyle: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              letterSpacing: 2.0,
            ))),
      ),
      backgroundColor: Colors.black,
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is SendOtpSuccessState) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Otp send to email")));
          }
          if (state is AuthError) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.mesage)));
          }
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
                key: _verifyformKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Enter Email",
                        style: GoogleFonts.breeSerif(
                            textStyle: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          letterSpacing: 2.0,
                        ))),
                    CustomizedTextField(
                      controller: emailcontroller,
                      label: "Email",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                            .hasMatch(value)) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                        child: CustomElevatedButton(
                            onpressed: () {
                              if (_verifyformKey.currentState!.validate()) {
                                context.read<AuthBloc>().add(SendOtp(
                                      emailcontroller.text,
                                    ));
                              }
                            },
                            label: "Send Otp"))
                  ],
                )),
          );
        },
      ),
    );
  }
}
