
import 'package:flutter/material.dart';

class HomePageUI extends StatefulWidget {
  const HomePageUI({super.key});

  @override
  State<HomePageUI> createState() => _HomePageUIState();
}

class _HomePageUIState extends State<HomePageUI> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter App',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(234, 221, 255, 1),
      ),
      body: Center(
        child: Text(
          counter.toString(),
          style: const TextStyle(
            fontSize: 25,
            color: Colors.blue,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Row(
          children: [
            Expanded(
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    counter = counter-1;
                  });
                },
                child: const Icon(Icons.remove),
              ),
            ),
            const Expanded(child: SizedBox(
              width: 10,
            )),
            Expanded(
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    counter = counter+1;
                  });
                },
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      )
    );
  }
}




