import 'package:flutter/material.dart';
import 'package:flutter_trips_app/widgets/profile_header.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        ProfileHeader(),
      ],
    );
  }
}
