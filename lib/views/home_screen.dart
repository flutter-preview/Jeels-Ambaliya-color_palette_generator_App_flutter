import 'package:color_palette_generator_app_flutter/modals/Global/globals.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../controllers/color_controller.dart';
import '../controllers/providers/color_provider.dart';
import '../controllers/providers/theme_provider.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  void initState() {
    loadData();
    allColors = convertToObject();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    Provider.of<ColorProvider>(context).ChangeColor();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Colors Generator App',
          style: GoogleFonts.caveat(
            textStyle: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 35,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {
                Provider.of<ThemeProvider>(context, listen: false)
                    .changeTheme();
              },
              icon: Icon(
                (Provider.of<ThemeProvider>(context, listen: false)
                            .themeModal
                            .isDark ==
                        false)
                    ? Icons.sunny
                    : Icons.wb_sunny_outlined,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 95,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(
                  hexColors(
                    allColors[Provider.of<ColorProvider>(context)
                            .colorModal
                            .First_Color]
                        .hexColor,
                  ),
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 32, left: 20),
                child: Text(
                  "#${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .First_Color]
                          .hexColor,
                    ),
                  ).toString()[10]}${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .First_Color]
                          .hexColor,
                    ),
                  ).toString()[11]}${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .First_Color]
                          .hexColor,
                    ),
                  ).toString()[12]}${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .First_Color]
                          .hexColor,
                    ),
                  ).toString()[13]}${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .First_Color]
                          .hexColor,
                    ),
                  ).toString()[14]}${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .First_Color]
                          .hexColor,
                    ),
                  ).toString()[15]}",
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              height: 95,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(
                  hexColors(
                    allColors[Provider.of<ColorProvider>(context)
                            .colorModal
                            .Secound_Color]
                        .hexColor,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 32, left: 20),
                child: Text(
                  "#${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .Secound_Color]
                          .hexColor,
                    ),
                  ).toString()[10]}${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .Secound_Color]
                          .hexColor,
                    ),
                  ).toString()[11]}${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .Secound_Color]
                          .hexColor,
                    ),
                  ).toString()[12]}${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .Secound_Color]
                          .hexColor,
                    ),
                  ).toString()[13]}${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .Secound_Color]
                          .hexColor,
                    ),
                  ).toString()[14]}${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .Secound_Color]
                          .hexColor,
                    ),
                  ).toString()[15]}",
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              height: 95,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(
                  hexColors(
                    allColors[Provider.of<ColorProvider>(context)
                            .colorModal
                            .Third_Color]
                        .hexColor,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 32, left: 20),
                child: Text(
                  "#${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .Third_Color]
                          .hexColor,
                    ),
                  ).toString()[10]}${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .Third_Color]
                          .hexColor,
                    ),
                  ).toString()[11]}${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .Third_Color]
                          .hexColor,
                    ),
                  ).toString()[12]}${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .Third_Color]
                          .hexColor,
                    ),
                  ).toString()[13]}${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .Third_Color]
                          .hexColor,
                    ),
                  ).toString()[14]}${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .Third_Color]
                          .hexColor,
                    ),
                  ).toString()[15]}",
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              height: 95,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(
                  hexColors(
                    allColors[Provider.of<ColorProvider>(context)
                            .colorModal
                            .Fourth_Color]
                        .hexColor,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 32, left: 20),
                child: Text(
                  "#${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .Fourth_Color]
                          .hexColor,
                    ),
                  ).toString()[10]}${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .Fourth_Color]
                          .hexColor,
                    ),
                  ).toString()[11]}${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .Fourth_Color]
                          .hexColor,
                    ),
                  ).toString()[12]}${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .Fourth_Color]
                          .hexColor,
                    ),
                  ).toString()[13]}${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .Fourth_Color]
                          .hexColor,
                    ),
                  ).toString()[14]}${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .Fourth_Color]
                          .hexColor,
                    ),
                  ).toString()[15]}",
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              height: 95,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(
                  hexColors(
                    allColors[Provider.of<ColorProvider>(context)
                            .colorModal
                            .Fifth_Color]
                        .hexColor,
                  ),
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 32, left: 20),
                child: Text(
                  "#${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .Fifth_Color]
                          .hexColor,
                    ),
                  ).toString()[10]}${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .Fifth_Color]
                          .hexColor,
                    ),
                  ).toString()[11]}${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .Fifth_Color]
                          .hexColor,
                    ),
                  ).toString()[12]}${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .Fifth_Color]
                          .hexColor,
                    ),
                  ).toString()[13]}${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .Fifth_Color]
                          .hexColor,
                    ),
                  ).toString()[14]}${Color(
                    hexColors(
                      allColors[Provider.of<ColorProvider>(context)
                              .colorModal
                              .Fifth_Color]
                          .hexColor,
                    ),
                  ).toString()[15]}",
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 35),
        child: GestureDetector(
          onTap: () {
            Provider.of<ColorProvider>(context, listen: false).ChangeColor();
          },
          child: Container(
            height: 75,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: (Provider.of<ThemeProvider>(context, listen: true)
                          .themeModal
                          .isDark ==
                      false)
                  ? Colors.white
                  : Colors.black,
              boxShadow: const [
                BoxShadow(
                  spreadRadius: 1,
                  blurRadius: 8,
                  offset: Offset(3, 3),
                  color: Colors.grey,
                ),
              ],
            ),
            child: Text(
              "Generate",
              style: GoogleFonts.orbitron(
                textStyle: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                  color: (Provider.of<ThemeProvider>(context, listen: false)
                              .themeModal
                              .isDark ==
                          false)
                      ? Colors.black
                      : Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
