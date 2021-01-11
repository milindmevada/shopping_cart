import 'dart:ui';

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

class AppColors {
  AppColors._();

  static const pastelGreen = Color(0xFF6FD37B);
  static const pastelGreen15 = Color(0x266FD37B);
  static const blueWood = Color(0xFF2D4055);
  static const cadetBlue = Color(0xFFA7AFBE);
  static const blueBayoux = Color(0xFF52667B);
  static Color blueBayoux60 = Color(0xFF52667B).withOpacity(0.6);
  static const Color scaffoldBg = Color(0xFFE0E3EA);
  static const Color shuttleGrey = Color(0xFF596273);
  static Color shuttleGrey60 = Color(0xFF596273).withOpacity(0.6);
  static Color linkWater80 = Color(0xFFF1F4FB).withOpacity(0.8);
  static const Color raven = Color(0xFF737D8F);
  static const Color steelBlue = Color(0xFF6080BD);
}
