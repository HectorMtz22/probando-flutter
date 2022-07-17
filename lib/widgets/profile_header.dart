import 'package:flutter/material.dart';
import 'package:flutter_trips_app/card.dart';
import 'package:flutter_trips_app/gradient_back.dart';
import 'circle_avatar.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const GradientBack(
        title: 'Profile',
        maximize: true,
      ),
      Container(
        margin: const EdgeInsets.only(top: 100),
        child: _mainProfile(),
      )
    ]);
  }

  Widget _mainProfile() {
    return Column(
      children: [
        Row(
          children: [
            const MyCircleAvatar(assetUrl: 'assets/img/profile_photo.jpg'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Namiko Yokoyama',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      letterSpacing: -1,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'minombre@mi_nombre',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 16,
                  ),
                )
              ],
            )
          ],
        ),
        _profileActions(),
      ],
    );
  }

  Widget _profileActions() {
    return Row(
      children: [
        _icon(const Icon(Icons.bookmark_add_outlined,
            color: Color(0xFF2468D3), size: 24)),
        _icon(const Icon(Icons.tv_off_outlined,
            color: Color(0xFF2468D3), size: 24)),
        _icon(const Icon(Icons.add, color: Color(0xFF2468D3), size: 40),
            maxi: true),
        _icon(const Icon(Icons.message_outlined,
            color: Color(0xFF2468D3), size: 24)),
        _icon(const Icon(Icons.person_add_alt_1_outlined,
            color: Color(0xFF2468D3), size: 24)),
      ],
    );
  }

  Widget _icon(Widget icon, {bool maxi = false}) {
    return Container(
      width: maxi ? 70 : 50,
      height: maxi ? 70 : 50,
      margin: const EdgeInsets.only(left: 20, top: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white54, width: 1),
          boxShadow: const [
            BoxShadow(
                offset: Offset(5, 5), blurRadius: 10, color: Colors.black12),
          ]),
      child: icon,
    );
  }
}
