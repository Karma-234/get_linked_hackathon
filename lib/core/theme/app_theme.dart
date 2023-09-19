import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static InputDecorationTheme inputDecor = InputDecorationTheme(
    hintStyle: GoogleFonts.montserrat(
      fontSize: 16.spMin,
      height: (20 / 16).spMin,
      fontWeight: FontWeight.w400,
    ),
    fillColor: const Color.fromRGBO(255, 255, 255, 0.03),
    // labelStyle: TextStyle(
    //   fontFamily: 'Roboto',
    //   fontWeight: FontWeight.w400,
    //   fontSize: 12.spMin,
    //   height: 16 / 12,
    //   color: AppNeutralColors.titleText,
    // ),
    // helperStyle: TextStyle(
    //   fontFamily: 'Roboto',
    //   fontWeight: FontWeight.w400,
    //   fontSize: 12.spMin,
    //   height: 16 / 12,
    //   color: AppSecondaryColors.s100,
    // ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.r),
      borderSide: const BorderSide(color: Colors.white),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.r),
      borderSide: const BorderSide(color: Colors.white),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.r),
      borderSide: const BorderSide(color: Colors.white),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.r),
      borderSide: const BorderSide(color: Colors.white),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.r),
      borderSide: const BorderSide(color: Colors.white),
    ),
  );
  // static CheckboxThemeData checkboxTheme = CheckboxThemeData(
  //   fillColor: MaterialStateColor.resolveWith(
  //     (states) => AppNeutralColors.white,
  //   ),
  //   checkColor: MaterialStateColor.resolveWith(
  //     (states) => AppNeutralColors.titleText,
  //   ),
  //   side: BorderSide(
  //     color: MaterialStateColor.resolveWith(
  //       (states) => states.contains(MaterialState.disabled)
  //           ? AppNeutralColors.black
  //           : AppNeutralColors.black,
  //     ),
  //   ),
  // );
}
