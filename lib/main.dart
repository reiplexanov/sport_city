
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sportcity/authentication/bloc/authentication_bloc.dart';
import 'package:sportcity/authentication/simple_bloc_delegate.dart';
import 'package:sportcity/authentication/user_repository.dart';
import 'package:sportcity/home/HomePage.dart';

import 'package:sportcity/home/blocs/Platform/index.dart';
import 'package:sportcity/login/login.dart';
import 'package:sportcity/login/splash.dart';
import 'authentication/bloc/index.dart';




void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  BlocSupervisor.delegate = SimpleBlocDelegate();
  final UserRepository userRepository = UserRepository();
  runApp(
    BlocProvider(
      create: (context) => AuthenticationBloc(
        userRepository: userRepository,
      )..add(AppStarted()),
      child: App(userRepository: userRepository),
    )
  );
}


class App extends StatelessWidget {
  final UserRepository _userRepository;

  App({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is Unauthenticated) {
            return LoginScreen(userRepository: _userRepository);
          }
          if (state is Authenticated) {
            return BlocProvider<PlatformBloc>(
              create: (context)=>PlatformBloc(),
              child: HomePage(
                name: state.displayName, 
                image: state.displayImage, 
                id: state.displayId, 
                jwt:state.displayJwt 
              )
            ); 
          }
          return SplashPage();
        },
      ),
    );
  }
}

