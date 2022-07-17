import 'package:flutter/material.dart';
import 'package:flutter_trips_app/gradient_back.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GradientBack(
      title: 'Profile',
      maximize: true,
    );
  }
}
