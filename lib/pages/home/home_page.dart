import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/circle_widget.dart';
import '../../widgets/cross_widget.dart';
import '../game/game_page.dart';

part 'game_title_widget.dart';
part 'game_mode_selection_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GameTitleWidget(),
          SizedBox(height: 30),
          GameModeSelectionWidget(),
        ],
      ),
    );
  }
}
