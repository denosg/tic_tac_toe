part of 'home_page.dart';

class GameTitleWidget extends StatelessWidget {
  const GameTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Tic Tac Toe",
          style: TextStyle(
            fontSize: 34.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 30.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 54.0,
              height: 54.0,
              child: CrossWidget(
                strokeWidth: 18.0,
              ),
            ),
            SizedBox(
              width: 24.0,
            ),
            SizedBox(
              width: 54.0,
              height: 54.0,
              child: CircleWidget(
                strokeWidth: 16.0,
              ),
            ),
          ],
        )
      ],
    );
  }
}
