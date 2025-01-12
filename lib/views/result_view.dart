import 'package:basket_ball/constant.dart';
import 'package:basket_ball/widgets/custom_elevated_button_widget.dart';
import 'package:basket_ball/widgets/custom_row_result_widget.dart';
import 'package:basket_ball/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class ResultView extends StatefulWidget {
  const ResultView({super.key});
  static String resultViewId = 'ResultView';

  @override
  State<ResultView> createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  int scoreToTeamX = 0;
  int scoreToTeamO = 0;
  void addOnePointToTeamX() {
    setState(
      () {
        scoreToTeamX++;
      },
    );
  }

  void addTwoPointToTeamX() {
    setState(
      () {
        scoreToTeamX = scoreToTeamX + 2;
      },
    );
  }

  void addThreePointToTeamX() {
    setState(
      () {
        scoreToTeamX += 3;
      },
    );
  }

  void addOnePointToTeamO() {
    setState(
      () {
        scoreToTeamO++;
      },
    );
  }

  void addTwoPointToTeamO() {
    setState(
      () {
        scoreToTeamO = scoreToTeamO + 2;
      },
    );
  }

  void addThreePointToTeamO() {
    setState(
      () {
        scoreToTeamO += 3;
      },
    );
  }

  void resetTheResultInTeamXAndO() {
    setState(
      () {
        scoreToTeamX = 0;
        scoreToTeamO = 0;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: kOrangeColor,
        title: CustomTextWidget(
          text: 'XO Game',
          fontSize: 35,
          color: kWhiteColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: [
          CustomRowResultWidget(
            scoreToTeamX: scoreToTeamX,
            scoreToTeamO: scoreToTeamO,
            addOnePointToTeamX: addOnePointToTeamX,
            addTwoPointToTeamX: addTwoPointToTeamX,
            addThreePointToTeamX: addThreePointToTeamX,
            addOnePointToTeamO: addOnePointToTeamO,
            addTwoPointToTeamO: addTwoPointToTeamO,
            addThreePointToTeamO: addThreePointToTeamO,
          ),
          const SizedBox(
            height: 80,
          ),
          CustomElevatedButtonWidget(
            borderRadius: 0,
            widthElevatedButton: 200,
            heightElevatedButton: 50,
            backgroundColor: kOrangeColor,
            onPressed: resetTheResultInTeamXAndO,
            text: 'Reset',
            color: kBlackColor,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
