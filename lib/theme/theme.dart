import 'package:test_thgroup/theme/src.dart';

ThemeData _lightTheme = ThemeData.light();

ThemeData lightTheme = _lightTheme.copyWith(
  primaryColor: AppColors.softPeach,
  inputDecorationTheme: InputDecorationTheme(
    iconColor: MaterialStateColor.resolveWith((Set<MaterialState> states) {
      return AppColors.hemp;
    }),
    floatingLabelStyle: TextStyle(
      color: AppColors.hemp,
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: AppColors.bridalHeath,
      ),
    ),
    disabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: AppColors.bridalHeath,
      ),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: AppColors.bridalHeath,
      ),
    ),
    border: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: AppColors.softPeach, width: 5.0),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
          textStyle: TextStyle(fontWeight: FontWeight.w600),
          foregroundColor: AppColors.softPeach)),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(50, 30),
          elevation: 0,
          backgroundColor: AppColors.floralWhite,
          foregroundColor: AppColors.softPeach,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))))),
  appBarTheme: const AppBarTheme(
      foregroundColor: AppColors.bridalHeath,
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      )),
  textTheme: _textLight(_lightTheme.textTheme),
  cardTheme: const CardTheme(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: AppColors.white,
      elevation: 0,
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      )),
);

TextTheme _textLight(TextTheme base) {
  return base.copyWith(
    headlineMedium: base.headlineMedium!.copyWith(
        fontWeight: FontWeight.w500, fontSize: 20, color: AppColors.textlight),
    headlineSmall: base.headlineMedium!.copyWith(
        fontWeight: FontWeight.w500, fontSize: 40, color: AppColors.rose),
    bodyMedium: base.bodyMedium!.copyWith(
        fontWeight: FontWeight.w400, fontSize: 14, color: AppColors.textlight),
    bodySmall: base.bodyMedium!.copyWith(
        fontWeight: FontWeight.w400, fontSize: 16, color: AppColors.white),
    titleMedium: base.titleMedium!.copyWith(
      color: AppColors.textlight,
      fontWeight: FontWeight.w400,
      fontSize: 12,
    ),
  );
}
