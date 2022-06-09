import 'package:flutter/material.dart';
import 'package:flutter_firebase_chat_app/states_management/onboarding/profile_image_cubit.dart';

import 'online_indicator.dart';

class ProfileImage extends StatelessWidget {
  final String imageUrl;
  final bool online;
  const ProfileImage({required this.imageUrl, this.online = false});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.transparent,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(126.0),
            child: Image.network(imageUrl,
                width: 126, height: 126, fit: BoxFit.fill),
          ),
          Align(
            alignment: Alignment.topRight,
            child: online ? const OnlineIndicator() : Container(),
          ),
        ],
      ),
    );
  }
}
