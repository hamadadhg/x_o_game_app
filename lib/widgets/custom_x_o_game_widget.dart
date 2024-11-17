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
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(
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
                      child: Text(
                        listOfXOrOValues[index] ?? '',
                        style: TextStyle(
                          color: listOfXOrOValues[index] == 'X'
                              ? const Color(
                                  0xffD72638,
                                )
                              : const Color(
                                  0xff007ACC,
                                ),
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
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
            child: Text(
              'Select X Or O',
            ),
          ),
          content: Padding(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(
                      0xffFFE9E9,
                    ),
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
                  child: const Text(
                    'X',
                    style: TextStyle(
                      color: Color(
                        0xffD72638,
                      ),
                      fontSize: 30,
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(
                      0xffE6F4FA,
                    ),
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
                  child: const Text(
                    'O',
                    style: TextStyle(
                      color: Color(
                        0xff007ACC,
                      ),
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
