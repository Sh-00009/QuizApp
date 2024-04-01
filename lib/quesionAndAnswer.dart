import 'package:flutter/material.dart';

List programmingQuizQuestions = [
{
    "ques": "What does HTML stand for?",
    "answers": [
      {"ans": "Hyperlinks and Text Markup Language", "score": 0},
      {"ans": "Hyper Text Markup Language", "score": 1},
      {"ans": "Home Tool Markup Language", "score": 0},
      {"ans": "Hyper Tool Multi Language", "score": 0}
    ]
  },
  {
    "ques": "Which language runs in a web browser?",
    "answers": [
      {"ans": "Java", "score": 0},
      {"ans": "C", "score": 0},
      {"ans": "Python", "score": 0},
      {"ans": "JavaScript", "score": 1}
    ]
  },
  {
    "ques": "What symbol is used to start a comment in Python?",
    "answers": [
      {"ans": "//", "score": 0},
      {"ans": "/*", "score": 0},
      {"ans": "#", "score": 1},
      {"ans": "<!--", "score": 0}
    ]
  },
  {
    "ques": "Which of the following is a way to iterate over an array in Java?",
    "answers": [
      {"ans": "for loop", "score": 0},
      {"ans": "while loop", "score": 0},
      {"ans": "do-while loop", "score": 0},
      {"ans": "All of the above", "score": 1}
    ]
  },
  {
    "ques": "What does CSS stand for?",
    "answers": [
      {"ans": "Creative Style Sheets", "score": 0},
      {"ans": "Computer Style Sheets", "score": 0},
      {"ans": "Cascading Style Sheets", "score": 1},
      {"ans": "Colorful Style Sheets", "score": 0}
    ]
  },
  {
    "ques": "Which is not a JavaScript Framework?",
    "answers": [
      {"ans": "Python Script", "score": 1},
      {"ans": "JQuery", "score": 0},
      {"ans": "Django", "score": 0},
      {"ans": "NodeJS", "score": 0}
    ]
  },
  {
    "ques": "Which language is used for styling web pages?",
    "answers": [
      {"ans": "HTML", "score": 0},
      {"ans": "JQuery", "score": 0},
      {"ans": "CSS", "score": 1},
      {"ans": "XML", "score": 0}
    ]
  },
  {
    "ques":
        "What is the correct syntax for referring to an external script called 'xxx.js'?",
    "answers": [
      {"ans": "<script href='xxx.js'>", "score": 0},
      {"ans": "<script name='xxx.js'>", "score": 0},
      {"ans": "<script src='xxx.js'>", "score": 1},
      {"ans": "<script file='xxx.js'>", "score": 0}
    ]
  },
  {
    "ques": "How do you create a function in JavaScript?",
    "answers": [
      {"ans": "function:myFunction()", "score": 0},
      {"ans": "function myFunction()", "score": 1},
      {"ans": "function = myFunction()", "score": 0},
      {"ans": "function => myFunction()", "score": 0}
    ]
  },
  {
    "ques": "How do you call a function named 'myFunction'?",
    "answers": [
      {"ans": "call function myFunction()", "score": 0},
      {"ans": "call myFunction()", "score": 0},
      {"ans": "myFunction()", "score": 1},
      {"ans": "function myFunction()", "score": 0}
    ]
  },
];

// // Question for section one "Mathematics Quiz" //

List MathQuizQuestions = [
  {
        "ques": "What is the value of pi (π)?",
        "answers": [
            {"ans": "3.14159", "score": 0},
            {"ans": "3.14", "score": 0},
            {"ans": "22/7", "score": 0},
            {"ans": "4", "score": 1}
        ]
    },
    {
        "ques": "What is the square root of 64?",
        "answers": [
            {"ans": "8", "score": 1},
            {"ans": "-8", "score": 0},
            {"ans": "0", "score": 0},
            {"ans": "5", "score": 0}
        ]
    },
    {
        "ques": "Simplify the expression: 3 + 4 * 2",
        "answers": [
            {"ans": "11", "score": 0},
            {"ans": "14", "score": 0},
            {"ans": "5", "score": 0},
            {"ans": "10", "score": 1}
        ]
    },
    {
        "ques": "What is the value of 2^3?",
        "answers": [
            {"ans": "8", "score": 1},
            {"ans": "7", "score": 0},
            {"ans": "3", "score": 0},
            {"ans": "4", "score": 0}
        ]
    },
    {
        "ques": "What is the result of (4 + 5) * 2?",
        "answers": [
            {"ans": "18", "score": 1},
            {"ans": "18.0", "score": 1},
            {"ans": "18.00", "score": 1},
            {"ans": "18.8", "score": 0}
        ]
    },
    {
        "ques": "What is the next number in the Fibonacci sequence: 1, 1, 2, 3, 5, __",
        "answers": [
            {"ans": "8", "score": 1},
            {"ans": "8", "score": 1},
            {"ans": "5", "score": 0},
            {"ans": "4", "score": 0}
        ]
    },
    {
        "ques": "What is the area of a square with side length 5?",
        "answers": [
            {"ans": "25", "score": 1},
            {"ans": "35", "score": 0},
            {"ans": "45", "score": 0},
            {"ans": "55", "score": 0}
        ]
    },
    {
        "ques": "Solve the equation: 2x + 5 = 15",
        "answers": [
            {"ans": "5", "score": 1},
            {"ans": "4", "score": 0},
            {"ans": "3", "score": 0},
            {"ans": "2", "score": 0}
        ]
    },
    {
        "ques": "What is the result of 10 divided by 2 ?",
        "answers": [
            {"ans": "5", "score": 1},
            {"ans": "5.0", "score": 1},
            {"ans": "5.00", "score": 1},
            {"ans": "5.55", "score": 0}
        ]
    },
    {
        "ques": "What is the sum of the angles in a triangle?",
        "answers": [
            {"ans": "180 degrees", "score": 1},
            {"ans": "180°", "score": 1},
            {"ans": "160", "score": 0},
            {"ans": "180.180", "score": 0}
        ]
    }
];

// // Question for section one "Physics Quiz" //

List historyQuizQuestions = [
    {
        "ques": "When did World War I begin?",
        "answers": [
            {"ans": "1914", "score": 0},
            {"ans": "1915", "score": 1},
            {"ans": "1916", "score": 1},
            {"ans": "1917", "score": 1}
        ]
    },
    {
        "ques": "Who was the first President of the United States?",
        "answers": [
            {"ans": "John Adams", "score": 0},
            {"ans": "George Washington", "score": 1},
            {"ans": "Thomas Jefferson", "score": 1},
            {"ans": "Abraham Lincoln", "score": 1}
        ]
    },
    {
        "ques": "What year did the French Revolution begin?",
        "answers": [
            {"ans": "1787", "score": 0},
            {"ans": "1788", "score": 1},
            {"ans": "1789", "score": 1},
            {"ans": "1790", "score": 1}
        ]
    },
    {
        "ques": "Who wrote 'The Communist Manifesto'?",
        "answers": [
            {"ans": "Karl Marx and Friedrich Engels", "score": 0},
            {"ans": "Vladimir Lenin", "score": 1},
            {"ans": "Leon Trotsky", "score": 1},
            {"ans": "Joseph Stalin", "score": 1}
        ]
    },
    {
        "ques": "Which country was the first to circumnavigate the globe?",
        "answers": [
            {"ans": "Spain", "score": 0},
            {"ans": "Portugal", "score": 1},
            {"ans": "England", "score": 1},
            {"ans": "France", "score": 1}
        ]
    },
    {
        "ques": "What was the main cause of the American Civil War?",
        "answers": [
            {"ans": "States' rights", "score": 0},
            {"ans": "Slavery", "score": 1},
            {"ans": "Economic differences", "score": 1},
            {"ans": "Territorial expansion", "score": 1}
        ]
    },
    {
        "ques": "Who was the leader of the Soviet Union during World War II?",
        "answers": [
            {"ans": "Vladimir Putin", "score": 0},
            {"ans": "Joseph Stalin", "score": 1},
            {"ans": "Nikita Khrushchev", "score": 1},
            {"ans": "Mikhail Gorbachev", "score": 1}
        ]
    },
    {
        "ques": "What was the name of the ship on which Charles Darwin sailed during his voyage?",
        "answers": [
            {"ans": "Mayflower", "score": 0},
            {"ans": "HMS Beagle", "score": 1},
            {"ans": "Santa Maria", "score": 1},
            {"ans": "Endeavour", "score": 1}
        ]
    },
    {
        "ques": "Which ancient civilization built the Great Pyramids of Giza?",
        "answers": [
            {"ans": "Mesopotamia", "score": 0},
            {"ans": "Ancient Egypt", "score": 1},
            {"ans": "Greece", "score": 1},
            {"ans": "Rome", "score": 1}
        ]
    },
    {
        "ques": "When was the Magna Carta signed?",
        "answers": [
            {"ans": "1213", "score": 0},
            {"ans": "1214", "score": 1},
            {"ans": "1215", "score": 1},
            {"ans": "1216", "score": 1}
        ]
    }
];


List answerColors = [
    Color.fromARGB(255, 87, 99, 170),
  Color.fromARGB(255, 87, 99, 170),
  Color.fromARGB(255, 87, 99, 170),
  Color.fromARGB(255, 87, 99, 170),
];