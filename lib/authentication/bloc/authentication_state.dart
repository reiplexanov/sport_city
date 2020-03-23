import 'package:equatable/equatable.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

class Uninitialized extends AuthenticationState {}

class Authenticated extends AuthenticationState {
  final String displayName;
  final String displayImage;
  final String displayId;
  final String displayJwt;

  const Authenticated(
    this.displayName,
    this.displayImage,
    this.displayId,
    this.displayJwt
    );

  @override
  List<Object> get props => [
    displayName,
    displayImage,
    displayId,
    displayJwt
    ];

  @override
  String toString() => 'Authenticated { displayName: $displayName , displayImage: $displayImage , displayID: $displayJwt }';
}



class Unauthenticated extends AuthenticationState {}