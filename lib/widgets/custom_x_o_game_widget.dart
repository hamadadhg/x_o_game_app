import 'package:basket_ball/constant.dart';
import 'package:basket_ball/widgets/custom_text_button_widget.dart';
import 'package:basket_ball/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class CustomXOGameWidget extends StatefulWidget {
  const CustomXOGameWidget({super.key});

  @override
  State<CustomXOGameWidget> createState() => _CustomXOGameWidgetState();
}

class _CustomXOGameWidgetState extends State<CustomXOGameWidget> {
  List<String?> listOfXOrOValues = List.filled(
    9,
    null,
  );
  // this List should filled(fill in 9 elements and all elements the value of them is null)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xffF3E9D2,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Center(
          child: SizedBox(
            height: 500,
            width: 500,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
              ),
              itemCount: listOfXOrOValues.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => clickOnCell(
                    context: context,
                    index: index,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                      color: kWhiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: kBlackColor.withOpacity(
                            0.1,
                          ),
                          blurRadius: 4,
                          offset: const Offset(
                            2,
                            2,
                          ),
                        ),
                      ],
                    ),
                    child: Center(
                      child: CustomTextWidget(
                        text: listOfXOrOValues[index] ?? '',
                        fontSize: 50,
                        color: listOfXOrOValues[index] == 'X'
                            ? kDeepRedColor
                            : kDeepBlueColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void clickOnCell({required BuildContext context, required int index}) {
    if (listOfXOrOValues[index] != null) {
      return;
    }
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Center(
            child: CustomTextWidget(
              text: 'Select X Or O',
              fontSize: 27,
              color: Colors.grey,
            ),
          ),
          content: Padding(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomTextButtonWidget(
                  backgroundColor: const Color(
                    0xffFFE9E9,
                  ),
                  onPressed: () {
                    setState(
                      () {
                        listOfXOrOValues[index] = 'X';
                      },
                    );
                    Navigator.pop(
                      context,
                    );
                  },
                  text: 'X',
                  fontSize: 30,
                  color: kDeepRedColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomTextButtonWidget(
                  backgroundColor: const Color(
                    0xffE6F4FA,
                  ),
                  onPressed: () {
                    setState(
                      () {
                        listOfXOrOValues[index] = 'O';
                      },
                    );
                    Navigator.pop(
                      context,
                    );
                  },
                  text: 'O',
                  fontSize: 30,
                  color: kDeepBlueColor,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
