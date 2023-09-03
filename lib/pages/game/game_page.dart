import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/ui_constants.dart';
import '../../controller/game_controller.dart';
import '../../game_ai/game_util.dart';
import '../../widgets/circle_widget.dart';
import '../../widgets/cross_widget.dart';

part 'board_widget.dart';
part 'current_player_widget.dart';
part 'game_action_widget.dart';
part 'game_status_widget.dart';

class GamePageBinding extends Bindings {
  final bool isMultiPlayer;

  GamePageBinding({required this.isMultiPlayer});

  @override
  void dependencies() {
    Get.lazyPut<GameController>(() => GameController(isMultiPlayer));
  }
}

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GameController controller = GameController(false);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BoardWidget(
                controller,
                size: MediaQuery.of(context).size.width * 0.76,
              ),
              const SizedBox(height: 30),
              CurrentPlayerWidget(controller),
              const SizedBox(height: 30),
              GameActionWidget(controller: controller),
            ],
          ),
        ),
      ),
    );
  }
}
