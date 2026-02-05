import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:lensfolio/configs/configs.dart';
import 'package:lensfolio/gen/assets/assets.gen.dart';

enum BorderType { circle, none }

class Avatar extends StatelessWidget {
  final String image;
  final double? size;
  final BorderType? borderType;

  const Avatar({
    super.key,
    this.image = '',
    this.size,
    this.borderType = BorderType.circle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size ?? 70,
      width: size ?? 70,
      padding: Space.a.t02,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: borderType == BorderType.circle ? 360.radius() : null,
      ),
      child: ClipRRect(
        borderRadius: borderType == BorderType.circle
            ? 360.radius()
            : 0.radius(),
        child: image.isEmpty
            ? Image.asset(Assets.dummyProfile.path)
            : CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: image,
                errorWidget: (context, error, stackTrace) {
                  return Container(
                    color: AppTheme.c.primary.withValues(alpha: 0.1),
                    child: Icon(LucideIcons.image, color: AppTheme.c.primary),
                  );
                },
              ),
      ),
    );
  }
}
