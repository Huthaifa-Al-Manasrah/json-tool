import 'package:evokey_tool/screens/json_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Evokey Tool'),
        centerTitle: true,
        actions: [
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const JsonScreen()));
          }, style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)), child: const Text('export json'),)
        ],
      ),
      body: Row(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(width: 3, color: Colors.black)
              ),
            ),
          ),
          Flexible(
              flex: 3,
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      color: Colors.purple,
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
