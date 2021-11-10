import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color bgColor = const Color(0xffFCF8F8);
Color blueColor = const Color(0xff3C7DD9);
Color lightBlueColor = const Color(0xff64A1F4);
Color blackColor = const Color(0xff000000);
Color whiteColor = const Color(0xffFFFFFF);
Color brownColor = const Color(0xffF8CA44);
Color activeColor = const Color(0xff47623F);
Color nonActiveColor = const Color(0xffC6C4C4);
Color greyColor = const Color(0xffF0F0F0);
Color darkGreyColor = const Color(0xffA2A6B4);
Color redColor = const Color(0xffFF485A);
Color productColor1 = const Color(0xffC4C4C4);
Color lightColor = const Color(0xffB4BBC6);

String desc =
    'Eiger atau PT Eigerindo Multi Produk Industri adalah perusahaan dan merek yang berasal dari Indonesia, yang memproduksi pakaian dan peralatan rekreasi alam. Perusahaan ini memproduksi produk untuk kegiatan mendaki gunung, berkemah, dan panjat tebing seperti tas dan jaket.';

TextStyle blackTextStyle = GoogleFonts.poppins(color: blackColor);
TextStyle greyTextStyle = GoogleFonts.poppins(color: darkGreyColor);
TextStyle whiteTextStyle = GoogleFonts.poppins(color: whiteColor);
TextStyle blueTextStyle = GoogleFonts.poppins(color: blueColor);
TextStyle greenTextStyle = GoogleFonts.poppins(color: activeColor);
TextStyle lightTextStyle = GoogleFonts.poppins(color: lightColor);

final ButtonStyle btnBlackStyle = ElevatedButton.styleFrom(
  primary: blackColor,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(53.45),
    ),
  ),
);

final ButtonStyle btnBlueStyle = ElevatedButton.styleFrom(
  primary: blueColor,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(53.45),
    ),
  ),
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
