import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';

class CounterMainPage extends StatefulWidget {
  const CounterMainPage({Key? key}) : super(key: key);

  @override
  State<CounterMainPage> createState() => _CounterMainPageState();
}

class _CounterMainPageState extends State<CounterMainPage> {
  final counterSubject = BehaviorSubject<int>();
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(
                  () {
                    counterSubject.add(++counter);
                  },
                );
              },
              child: const Text('add'),
            ),
            StreamBuilder<int>(
              stream: counterSubject.stream,
              initialData: 0,
              builder: (context, snapshot) {
                return Text('${snapshot.data}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
