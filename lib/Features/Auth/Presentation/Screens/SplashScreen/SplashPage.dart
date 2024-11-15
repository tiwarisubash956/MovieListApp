import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movielistapp/Configuration/routes/app_router.gr.dart';
import 'package:movielistapp/Features/Auth/Presentation/bloc/auth_bloc.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 15));

    // Trigger navigation after a delay to simulate splash screen behavior

    context.read<AuthBloc>().add(CheckAuthStatus());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is Logined) {
            if (state.usermode != null) {
              context.router.replace(const HomeRoute());
            } else {
              context.router.replace(Signinscreen());
            }
          }
        },
        builder: (context, state) {
          return Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
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
                  const Text(
                    "Movie of quality",
                    style: TextStyle(
                      fontFamily: 'BreeSerif',
                      color: Colors.red,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
