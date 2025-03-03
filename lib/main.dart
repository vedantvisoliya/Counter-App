import 'package:flutter/material.dart';
import 'package:counter_app/counter_app_material_page.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: "Counter App",
      debugShowCheckedModeBanner: false,
      home: CounterAppMaterialPage(),
    );
  }
}
