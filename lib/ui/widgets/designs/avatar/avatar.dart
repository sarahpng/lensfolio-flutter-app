import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lensfolio/configs/configs.dart';
import 'package:lensfolio/gen/assets/assets.gen.dart';

class Avatar extends StatelessWidget {
  final String image;
  final double? size;

  const Avatar({super.key, this.image = '', this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size ?? 70,
      width: size ?? 70,
      padding: Space.a.t02,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(360),
      ),
      child: ClipRRect(
        borderRadius: 300.radius(),
        child: image.isEmpty
            ? Image.asset(Assets.dummyProfile.path)
            : CachedNetworkImage(imageUrl: image),
      ),
    );
  }
}
