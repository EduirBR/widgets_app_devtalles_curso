import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/themes/app_theme.dart';

final isDarkmodeProvider = StateProvider((dark) => false);

final colorListProvider = Provider((ref) => colorList);
final selectedColor = StateProvider((value) => 0);
