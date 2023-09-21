import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyLogIN.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  TextEditingController _num1Controller = TextEditingController();
  TextEditingController _num2Controller = TextEditingController();
  var result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text("welcome to flutter"),
      ),
      body: Container(
        color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // centerTitle: true,--> Not working
          children: [
            const SizedBox(
              height: 50,
            ),

            CircleAvatar(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "assets/images/pic.jpg",
                  width: 200,
                  height: 200,
                ),
              ),
            ),

            const Text("Flutter Calculator"),
            Container(
              color: Colors.yellow, // Set the background color of the body here
              child: const Center(
                child: Text("Hello, Flutter!"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            //Number1 TextField
            SizedBox(
              width: 350,
              child: TextField(
                controller: _num1Controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    label: const Text("Enter first number")),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            SizedBox(
              width: 350,
              child: TextField(
                controller: _num2Controller,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person_2_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  label: const Text("Enter first number"),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      var n1 = int.parse(_num1Controller.text);
                      var n2 = int.parse(_num2Controller.text);
                      result = n1 + n2;
                      setState(() {});
                    },
                    child: const Text("Add")),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      var n1 = int.parse(_num1Controller.text);
                      var n2 = int.parse(_num2Controller.text);
                      result = n1 * n2;
                      setState(() {});
                    },
                    child: const Text("mul")),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      var n1 = int.parse(_num1Controller.text);
                      var n2 = int.parse(_num2Controller.text);
                      result = n1 - n2;
                      setState(() {});
                    },
                    child: const Text("sub")),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      var n1 = int.parse(_num1Controller.text);
                      var n2 = int.parse(_num2Controller.text);
                      result = n1 / n2;
                      result = double.parse(result.toStringAsFixed(2));
                      setState(() {});
                    },
                    child: const Text("div")),
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Mylogin()));
                },
                child: const Text("Next")),
            Text("Result: $result")
          ],
        ),
      ),
    );
  }
}
