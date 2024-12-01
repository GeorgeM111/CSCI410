import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/diabetes.dart';

class home1 extends StatefulWidget {
  const home1({Key? key}) : super(key: key);
  @override
  State<home1> createState() => _home1State();
}

class _home1State extends State<home1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(

                title: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 24, color: Colors.black), // Default text style
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Welcome to ', // First part with one style
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22, // Larger font size for "Welcome to"
                            color: Colors.green,
                          ),
                        ),
                        TextSpan(
                          text: 'Diagnose Me', // Second part with another style
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32, // Larger font size for "Diagnose Me"
                            color: Colors.blue, // Different color for emphasis
                          ),
                        ),
                      ],
                    ),
                  ),
                ),


              actions: [
                ElevatedButton(

                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => diabetes()));
                    },
                    child: const Icon(Icons.navigate_next, size: 50))

              ]
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to Health Diagnoser — your personal health companion. This app is designed to help you assess your risk for Diabetes, Cholesterol imbalance, and Anemia based on your symptoms and health data. With just a few simple steps, you can gain valuable insights into your health status.',
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 20), // Space between sections
                Text(
                  'Key Features:',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '• Diabetes Diagnosis: Take a quick and easy test to check for common symptoms of diabetes, such as excessive thirst, frequent urination, and fatigue. This test helps you recognize early signs and take necessary steps for treatment.',
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '• Cholesterol Check: Keep track of your cholesterol levels through a series of questions that help evaluate your heart health. High cholesterol can be a silent threat, but with this app, you can monitor your risks early.',
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '• Anemia Detection: With a simple symptom checklist, detect possible signs of anemia, such as fatigue, pale skin, or shortness of breath. Identifying anemia early can lead to effective management and treatment.',
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'How It Works:',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '• Easy Symptom Check: The app asks you to select the symptoms you’re experiencing, and based on your responses, it suggests whether further medical consultation is necessary.',
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '• Quick and Simple: You can complete the symptom checks in just a few minutes, with no need for lab tests.',
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '• Guidance: If your results indicate a potential health issue, the app will provide personalized suggestions for lifestyle changes and recommend seeing a doctor for further evaluation.',
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
