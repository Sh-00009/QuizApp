// import 'package:flutter/material.dart';

// class scoreScreen extends StatelessWidget {
//   const scoreScreen({super.key});
// }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             RichText(
//                 text:
//                     TextSpan(style: TextStyle(color: Colors.black), children: [
//               const TextSpan(
//                 text: "Hello  ",
//               ),
//               TextSpan(
//                   text: userNameController.text,
//                   style: const TextStyle(
//                       color: Colors.blue,
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold)),
//               const TextSpan(
//                   text: "  you have completed the quiz and your score is"),
//               const TextSpan(
//                   text: " 8/10",
//                   style: TextStyle(fontSize: 25, color: Colors.red)),
//             ])),
//             const SizedBox(
//               height: 20,
//             ),
//             TextButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute<void>(
//                       builder: (BuildContext context) => SplashScreen(),
//                     ),
//                   );
//                 },
//                 child: const Text("Play again"))
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/username.dart';
import 'package:flutter_application_1/quizApp.dart';

class ScorePage extends StatefulWidget {
  int currentScore;
  int numberQuestions;
   ScorePage({super.key, required this.currentScore, required this.numberQuestions});

  // ScorePage({Key? key, this.questionsAndAnswersList}) : super(key: key);

  @override
  State<ScorePage> createState() => ScorePageState();
}

class ScorePageState extends State<ScorePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          decoration: const BoxDecoration(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assest/Congratulation.png'),
                width: 310,
                height: 300,
              ),
              RichText(
                  text: TextSpan(
                      style: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'GentiumBookPlus',
                          fontSize: 24),
                      children: [
                    const TextSpan(
                      text: "you have completed the quiz and your score is ",
                    ),
                    TextSpan(
                        text: userName.text,
                        style: const TextStyle(
                            color: Color(0xFF51829B),
                            fontFamily: 'GentiumBookPlus',
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                  ])),
               Text(
                " ${widget.currentScore.toString()}/${widget.numberQuestions.toString()}",
                style: const TextStyle(
                  fontFamily: 'GentiumBookPlus',
                  fontSize: 40,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 15,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all(Color.fromARGB(255, 74, 66, 164)),
                  ),
                  child: const Text(
                    'Try Agin',
                    style: TextStyle(
                      color: Color.fromARGB(255, 246, 244, 244),
                      fontFamily: 'GentiumBookPlus',
                      fontSize: 30,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => const QuizApp(),
                        ));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
