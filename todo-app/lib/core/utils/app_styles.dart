import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/core/utils/colors_manager.dart';



class AppLightStyles {
  static TextStyle? appBarTextStyle = GoogleFonts.poppins(
      fontSize: 22, fontWeight: FontWeight.w700, color: ColorsManager.white);
  static TextStyle? bottomSheetTitle = GoogleFonts.poppins(
      fontSize: 18, fontWeight: FontWeight.w700, color: ColorsManager.black);
  static TextStyle? hintStyle = GoogleFonts.inter(
      fontSize: 14, fontWeight: FontWeight.w400, color: ColorsManager.grey);
  static TextStyle? dateLabel = GoogleFonts.inter(
      fontSize: 18, fontWeight: FontWeight.w400, color: ColorsManager.black);
  static TextStyle? dateStyle = GoogleFonts.inter(
      fontSize: 16, fontWeight: FontWeight.w400, color: ColorsManager.grey);
  static TextStyle? tasksTitle = GoogleFonts.poppins(
      fontSize: 18, fontWeight: FontWeight.w700, color: ColorsManager.blue);
  static TextStyle? taskDesc = GoogleFonts.poppins(
      fontSize: 14, fontWeight: FontWeight.normal, color: ColorsManager.black);
  static TextStyle? taskDate = GoogleFonts.roboto(
      fontSize: 12, fontWeight: FontWeight.normal, color: ColorsManager.black);
}
