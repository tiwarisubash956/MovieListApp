import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movielistapp/Configuration/routes/app_router.gr.dart';

import 'package:movielistapp/Features/Auth/Presentation/bloc/auth_bloc.dart';

class CustomDrawer extends StatelessWidget {
  final FirebaseAuth firebaseauth = FirebaseAuth.instance;

  CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is logOuted) {
          context.router.push(Signinscreen());
        }
      },
      builder: (context, state) {
        return Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              const SizedBox(
                height: 130,
                child: UserAccountsDrawerHeader(
                    currentAccountPictureSize: Size(40, 40),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white,
                    ),
                    decoration: BoxDecoration(color: Colors.black),
                    accountName: Text("subash"),
                    accountEmail: Text('subashtiwari421gmail.com')),
              ),
              GestureDetector(
                onTap: () {
                  context.read<AuthBloc>().add(const AuthEvent.LogoutEvent());
                },
                child: const ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("LogOut"),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
