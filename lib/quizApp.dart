import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginPage.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assest/backgroundQuizApp.jpeg'),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assest/logoquizapp.png'),
                width: 100000,
                height: 250,
              ),
              const Text(
                'Its Quiz App',
                style: TextStyle(
                  fontFamily: 'GentiumBookPlus',
                  color: Color.fromARGB(255, 39, 30, 70),
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "We Are Creative, enjoy our App",
                style: TextStyle(  fontSize: 24,
                  color: Colors.black,

                ),
              ), 
              SizedBox(
                height: MediaQuery.of(context).size.height / 7,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
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
                        MaterialStateProperty.all(const Color.fromARGB(255, 39, 31, 69)),
                  ),
                  child: const Text(
                    'Lets go',
                    style: TextStyle(
                      color: Color.fromARGB(255, 246, 246, 243),
                      fontFamily: 'GentiumBookPlus',
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => const LoginPage(),
                        ));
                  }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}