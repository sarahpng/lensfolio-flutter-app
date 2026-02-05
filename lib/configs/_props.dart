part of 'configs.dart';

abstract class AppProps {
  static final quick = 100.milliseconds;
  static final fast = 200.milliseconds;
  static final medium = 300.milliseconds;
  static final normal = 500.milliseconds;

  static const radiusTop = BorderRadius.vertical(top: Radius.circular(8));
  static final radiusAll = BorderRadius.circular(8);

  static BoxDecoration get boxdecoration => BoxDecoration(
    color: AppTheme.c.navbarBase,
    borderRadius: 8.radius(),
    border: Border.all(color: AppTheme.c.subText.withValues(alpha: 0.1)),
  );
}
