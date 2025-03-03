import 'package:flutter/material.dart';

class CounterAppMaterialPage extends StatefulWidget{
  const CounterAppMaterialPage({super.key});
  @override
  State<CounterAppMaterialPage> createState() => _CounterAppMaterialPageState();
}

class _CounterAppMaterialPageState extends State<CounterAppMaterialPage>{
  int counterVariable = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "+/- Counter App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 23,
            fontFamily: "poppins",
            fontWeight: FontWeight.bold,
          ),
        ),
        // centerTitle: true,
        elevation: 10,
        backgroundColor: Color.fromARGB(255, 200, 76, 237),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Incrementing and Decrementing",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              counterVariable.toString(),
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 56,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              // margin: EdgeInsets.only(right: 200),
              padding: EdgeInsets.only(bottom: 15),
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    counterVariable += 1;
                  });
                },
                style: ButtonStyle(
                  elevation: WidgetStatePropertyAll(5),
                  backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 200, 76, 237)),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                ),
                child: const Text(
                  "+",
                  style: TextStyle(
                    fontSize: 38,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ), 
              ),
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  counterVariable -= 1;
                });
              },
              style: ButtonStyle(
                elevation: WidgetStatePropertyAll(5),
                backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 200, 76, 237)),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
              ),
              child: const Text(
                "-",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ), 
            ),
          ],
        ),
      ),
    );
  }
}