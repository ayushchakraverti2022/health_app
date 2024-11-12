
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

late SharedPreferences sf; // = await SharedPreferences.getInstance();
  Future<void> sfi() async {
    sf = await SharedPreferences.getInstance();  
  }
 @override
  void initState() {
    super.initState();
    sfi();   
  }
  
 final List<String> questions = [
    "उदासी या उदास मनोदोष का अनुभव रहता है / Sadness or depressed mood",
    "चीज़ को करने में अरुचि या अप्रशांत का अनुभव / Loss of interest or pleasure in doing things",
    "अत्याधिक थकान या बिना ऊर्जा के महसूस करना / Feeling excessively tired or without energy",
    "अनिद्रा से पीड़ित है / Suffering from sleeplessness",
    "बेचैन, चिंता या तनाव महसूस करना / Feeling nervous, anxious, or on edge",
    "चिंता को रोकने या नियंत्रित न कर पाना / Not being able to stop or control worrying",
    "विभिन्न चीज़ों के बारे में अधिक चिंता करना / Worrying too much about different things",
    "आराम करना मुश्किल होना / Trouble relaxing",
    "इतना बेचैन होना कि शांत न बैठ पाना / Being so restless that it is hard to sit still",
    "आसानी से खीजना या चिड़चिड़ाना / Become easily annoyed or irritated",
    "डर लगता है जैसे कुछ बुरा या भयंकर होने वाला है / Feeling afraid as if something awful might happen"
  ];

  Map<int, String> answers = {};

  // Function to analyze and print mental status based on answers
  void analyzeAnswers() {
    int yesCount = answers.values.where((answer) => answer == "YES").length;

    String mentalStatus;
    if (yesCount >= 8) {
      mentalStatus = "High likelihood of mental distress. Consider seeking professional help.";
    } else if (yesCount >= 4) {
      mentalStatus = "Moderate mental distress. Consider practicing self-care or talking to someone.";
    } else {
      mentalStatus = "Low mental distress. Keep up with positive mental health practices.";
    }

    // Show the result in an alert dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Mental Status Analysis"),
          content: Text(mentalStatus),
          actions: [
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check your mental health"),
      ),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(questions[index]),
            subtitle: Row(
              children: [
                Radio<String>(
                  value: "YES",
                  groupValue: answers[index],
                  onChanged: (value) {
                    setState(() {
                      answers[index] = value!;
                    });
                  },
                ),
                Text("YES"),
                SizedBox(width: 20),
                Radio<String>(
                  value: "NO",
                  groupValue: answers[index],
                  onChanged: (value) {
                    setState(() {
                      answers[index] = value!;
                    });
                  },
                ),
                Text("NO"),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: analyzeAnswers,
        child: Icon(Icons.check),
        tooltip: 'Analyze Answers',
      ),
    );
  }
}