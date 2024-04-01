// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/quesionAndAnswer.dart';
// // import 'package:flutter_application_1/quesionPage.dart';
// import 'package:flutter_application_1/scorePage.dart';

// class quizCategories extends StatelessWidget {
//   const quizCategories({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Column(
//           children: [
//             quizCategory("ProgrammingQuiz", const Color.fromARGB(255, 158, 83, 183),
//                 context, programmingQuizQuestions),
//             quizCategory("MathQuiz", const Color.fromARGB(255, 114, 151, 210),
//                 context,  MathQuizQuestions),
//             quizCategory("historyQuiz", const Color.fromARGB(146, 234, 231, 235),
//                 context, historyQuizQuestions),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Widget quizCategory(
//     String categoryName, Color categoryColor, context, List questionList) {
//   return Center(
//     child: Padding(
//       padding: const EdgeInsets.only(top: 40),
//       child: InkWell(
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) =>
//                   QuizPage(questionAndAnswerList: questionList),
//             ),
//           );
//         },
//         child: Container(
//           margin: const EdgeInsets.all(9),
//           height: 170,
//           width: 340,
//           decoration: BoxDecoration(
//             color: categoryColor,
//             borderRadius: BorderRadius.circular(40),
//           ),
//           child: Center(
//             child: Text(
//               categoryName,
//               style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }

// class QuizPage extends StatefulWidget {
//   final List questionAndAnswerList;
//   const QuizPage({super.key, required this.questionAndAnswerList});

//   @override
//   State<QuizPage> createState() => _QuizPageState();
// }

// class _QuizPageState extends State<QuizPage> {
//   int _index = 0;
//   int _currentScore = 0;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text(
//                 'Question',
//                 style: TextStyle(
//                   fontSize: 40,
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                   fontFamily: 'GentiumBookPlus',
//                 ),
//               ),
//               Text(
//                 '${_index + 1} / ${widget.questionAndAnswerList.length}',
//                 style: const TextStyle(
//                   fontSize: 55,
//                   color: Color.fromARGB(255, 57, 57, 112),
//                   fontWeight: FontWeight.bold,
//                   fontFamily: 'GentiumBookPlus',
//                 ),
//               ),
//               Text(
//                 widget.questionAndAnswerList[_index]["ques"],
//                 style: const TextStyle(
//                   fontSize: 23,
//                   fontWeight: FontWeight.normal,
//                   fontFamily: 'GentiumBookPlus',
//                 ),
//               ),
//               const SizedBox(height: 16),
//               for (int i = 0;
//                   i < widget.questionAndAnswerList[_index]["answers"].length;
//                   i++)
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width / 1.4,
//                   child: ElevatedButton(
//                     style: ButtonStyle(
//                       shape: MaterialStateProperty.all(
//                         const RoundedRectangleBorder(
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(30),
//                           ),
//                         ),
//                       ),
//                       backgroundColor: MaterialStateProperty.all(
//                         answerColors[i],
//                       ),
//                     ),
//                     child: Text(
//                       widget.questionAndAnswerList[_index]["answers"][i]['ans'],
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontFamily: 'GentiumBookPlus',
//                         fontWeight: FontWeight.normal,
//                         fontSize: 20,
//                       ),
//                     ),
//                     onPressed: () {
//                       _currentScore = widget.questionAndAnswerList[_index]["answers"][i]['score'] + _currentScore;
//                       if ((_index + 1) < widget.questionAndAnswerList.length) {
//                         setState(() {
//                           _index++;
//                         });
//                       } else {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute<void>(
//                             builder: (BuildContext context) =>  ScorePage(currentScore: _currentScore, numberQuestions: widget.questionAndAnswerList.length),
//                           ),
//                         );
//                       }
//                     },
//                   ),
//                 ),
//               const SizedBox(height: 25),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(const MaterialApp(
//     home: quizCategories(),
//   ));
// }

import 'package:flutter/material.dart';
import 'package:flutter_application_1/quesionAndAnswer.dart';
// import 'package:flutter_application_1/quesionPage.dart';
import 'package:flutter_application_1/scorePage.dart';

class quizCategories extends StatelessWidget {
  const quizCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40), // Increase padding here
              child: quizCategory(
                "ProgrammingQuiz",
                const Color.fromARGB(255, 158, 83, 183),
                context,
                programmingQuizQuestions,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 25), // Increase padding here
              child: quizCategory(
                "MathQuiz",
                const Color.fromARGB(255, 114, 151, 210),
                context,
                MathQuizQuestions,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 25), // Increase padding here
              child: quizCategory(
                "HistoryQuiz",
                Color.fromARGB(146, 135, 130, 137),
                context,
                historyQuizQuestions,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget quizCategory(
  String categoryName,
  Color categoryColor,
  context,
  List questionList,
) {
  return Center(
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => QuizPage(questionAndAnswerList: questionList),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(9),
        height: 200,
        width: 300,
        decoration: BoxDecoration(
          color: categoryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            categoryName,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
  );
}

class QuizPage extends StatefulWidget {
  final List questionAndAnswerList;
  const QuizPage({super.key, required this.questionAndAnswerList});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _index = 0;
  int _currentScore = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Question',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'GentiumBookPlus',
                ),
              ),
              Text(
                '${_index + 1} / ${widget.questionAndAnswerList.length}',
                style: const TextStyle(
                  fontSize: 55,
                  color: Color.fromARGB(255, 57, 57, 112),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'GentiumBookPlus',
                ),
              ),
              Text(
                widget.questionAndAnswerList[_index]["ques"],
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'GentiumBookPlus',
                ),
              ),
              const SizedBox(height: 16),
              for (int i = 0;
                  i < widget.questionAndAnswerList[_index]["answers"].length;
                  i++)
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.4,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        answerColors[i],
                      ),
                    ),
                    child: Text(
                      widget.questionAndAnswerList[_index]["answers"][i]['ans'],
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'GentiumBookPlus',
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      _currentScore = widget.questionAndAnswerList[_index]["answers"][i]['score'] + _currentScore;
                      if ((_index + 1) < widget.questionAndAnswerList.length) {
                        setState(() {
                          _index++;
                        });
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>  ScorePage(currentScore: _currentScore, numberQuestions: widget.questionAndAnswerList.length),
                          ),
                        );
                      }
                    },
                  ),
                ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: quizCategories(),
  ));
}
