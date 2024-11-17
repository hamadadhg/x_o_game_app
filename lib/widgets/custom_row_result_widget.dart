/*
import 'package:basket_ball/widgets/custom_column_contain_result_widget.dart';
import 'package:flutter/material.dart';

class CustomRowResultWidget extends StatelessWidget {
  const CustomRowResultWidget({
    super.key,
    required this.scoreToTeamX,
    required this.scoreToTeamO,
    required this.addOnePointToTeamX,
    required this.addTwoPointToTeamX,
    required this.addThreePointToTeamX,
    required this.addOnePointToTeamO,
    required this.addTwoPointToTeamO,
    required this.addThreePointToTeamO,
  });
  final int scoreToTeamX;
  final int scoreToTeamO;
  final VoidCallback addOnePointToTeamX;
  final VoidCallback addTwoPointToTeamX;
  final VoidCallback addThreePointToTeamX;
  final VoidCallback addOnePointToTeamO;
  final VoidCallback addTwoPointToTeamO;
  final VoidCallback addThreePointToTeamO;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 490,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomColumnContainResultWidget(
            text: 'Team X',
            score: scoreToTeamX,
            addOnePoint: addOnePointToTeamX,
            addTwoPoint: addTwoPointToTeamX,
            addThreePoint: addThreePointToTeamX,
            color: Colors.lightGreenAccent,
          ),
          const SizedBox(
            width: 20,
          ),
          const VerticalDivider(
            color: Colors.grey,
            indent: 45,
          ),
          const SizedBox(
            width: 20,
          ),
          CustomColumnContainResultWidget(
            text: 'Team O',
            score: scoreToTeamO,
            addOnePoint: addOnePointToTeamO,
            addTwoPoint: addTwoPointToTeamO,
            addThreePoint: addThreePointToTeamO,
            color: Colors.lightBlueAccent,
          ),
        ],
      ),
    );
  }
}
*/