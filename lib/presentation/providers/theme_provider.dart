import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Estado  => isDarkModeProvider = boolean
//Un simple boolean

final isDarkmodeProvider = StateProvider<bool>((ref) => false);

// Listado de colores inmutable

final colorListProvider = Provider((ref) => colorList);

//Un simple int

final selectedColorProvider = StateProvider((ref) => 0);

// Un objeto de tipo AppTheme (custom)

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

// Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // STATE = estado = new AppTheme
  ThemeNotifier() : super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
