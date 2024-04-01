// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/quesionAndAnswer.dart';
// import 'package:flutter_application_1/scorePage.dart';


// class QuestionPage extends StatefulWidget {
//   final List? questionsAndAnswersList;

//   QuestionPage({Key? key, this.questionsAndAnswersList}) : super(key: key);

//   @override
//   _QuestionPageState createState() => _QuestionPageState();
// }

// class _QuestionPageState extends State<QuestionPage> {
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       decoration: InputDecoration(
//         labelText: 'Search',
//         labelStyle: TextStyle(color: Colors.grey),
//         prefixIcon: Icon(Icons.search),
//         suffixIcon: Icon(Icons.warning),
//         filled: true,
//         fillColor: Colors.red,
//         enabledBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.red),
//           borderRadius: BorderRadius.circular(30.0),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.red),
//           borderRadius: BorderRadius.circular(30.0),
//         ),
//       ),
//     );
//   }




  
// }
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/quesionAndAnswer.dart';
// import 'package:flutter_application_1/scorePage.dart';

// class quesionPage extends StatefulWidget {
//   final List? questionsAndAnswersList;

//   quesionPage({Key? key, this.questionsAndAnswersList}) : super(key: key);

//   @override
//   State<quesionPage> createState() => _QuestionScreenState();
// }

// class _QuestionScreenState extends State<quesionPage> {
//   int _currentIndex = 0;
//   int? _selectedAnswerIndex;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Question Screen'),
//         ),
//         body: Padding(
//           padding: EdgeInsets.all(12),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 "Question Number: ${_currentIndex + 1}/${widget.questionsAndAnswersList!.length}",
//                 style: TextStyle(
//                   fontSize: 20,
//                 ),
//               ),
//               SizedBox(height: 12),
//               Text(
//                 widget.questionsAndAnswersList![_currentIndex]["ques"],
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.red,
//                 ),
//               ),
//               SizedBox(height: MediaQuery.of(context).size.height * 0.1),
//               Column(
//                 children: List.generate(
//                   widget.questionsAndAnswersList![_currentIndex]["answers"].length,
//                   (index) => RadioListTile<int>(
//                     title: Text(widget.questionsAndAnswersList![_currentIndex]["answers"][index]['ans']),
//                     value: index,
//                     groupValue: _selectedAnswerIndex,
//                     onChanged: (value) {
//                       setState(() {
//                         _selectedAnswerIndex = value;
//                       });
//                     },
//                   ),
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   if (_selectedAnswerIndex != null) {
//                     if (_currentIndex + 1 < widget.questionsAndAnswersList!.length) {
//                       setState(() {
//                         _currentIndex++;
//                         _selectedAnswerIndex = null;
//                       });
//                     } else {
//                       Navigator.pushReplacement(
//                         context,
//                       MaterialPageRoute<void>(
//                              builder: (BuildContext context) => scorePage(), 
//                           ),
//                       );
//                     }
//                   } else {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(
//                         content: Text('Please select an answer before submitting.'),
//                       ),
//                     );
//                   }
//                 },
//                 child: Text('Submit'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
