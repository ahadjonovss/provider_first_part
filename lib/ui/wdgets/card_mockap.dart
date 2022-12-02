import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider_first_lesson/view_model/main_page_view_model.dart';

import '../../constants/image.dart';

Column CardItems(MainPageViewModel bankViewModel, int index) {
  return Column(
    children: [
      const SizedBox(
        height: 15,
      ),
      Center(
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                color: Color(hexColor(bankViewModel
                        .cards![index].colors!.colorA
                        .toString()) ??
                    ""),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Color(hexColor(bankViewModel
                                .cards![index].colors!.colorA
                                .toString()) ??
                            "")
                        .withOpacity(0.5),
                    blurRadius: 2,
                    offset: const Offset(3, 6), // Shadow position
                  ),
                ],
              ),
            ),
            SvgPicture.asset(
              MyIcon.cardbg,
              color: Color(hexColor(bankViewModel.cards![index].colors!.colorB
                      .toString()) ??
                  ""),
            ),
            SizedBox(
              height: 200,
              width: 400,
              child: Padding(
                padding: const EdgeInsets.only(top: 15, right: 15, left: 35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      // Image.network(bankViewModel.cards![index].iconImage)
                    ]),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          MyIcon.card,
                          width: 50,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              bankViewModel.cards![index].cardNumber
                                  .toString(),
                              style: GoogleFonts.concertOne().copyWith(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w100),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              bankViewModel.cards![index].expireDate
                                  .toString()
                                  .substring(2, 7)
                                  .replaceAll("-", " / "),
                              style: GoogleFonts.alatsi(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Current Ballance",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "UZS ${bankViewModel.cards![index].moneyAmount}",
                          style: GoogleFonts.rajdhani().copyWith(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ],
  );
}

hexColor(String colorhexcode) {
  String colornew = '0xff$colorhexcode';
  colornew = colornew.replaceAll("#", "");
  int colorint = int.parse(colornew);
  return colorint;
}
