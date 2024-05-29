import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorScheme.fromSeed(seedColor: Colors.amberAccent.shade200).surface,
        title: const Text('계이지 계산기'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyCount(),
            DoanCount(),
            DoanGage(),
            Calculation(),
          ],
        ),
      ),
    );
  }
}

class MyCount extends StatefulWidget {
  const MyCount({super.key});

  @override
  State<MyCount> createState() => _MyCountState();
}

class _MyCountState extends State<MyCount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: const TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: '나의 코 수를 입력하세요',
          )
      ),
    );
  }
}

class DoanCount extends StatefulWidget {
  const DoanCount({super.key});

  @override
  State<DoanCount> createState() => _DoanCountState();
}

class _DoanCountState extends State<DoanCount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: const TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: '도안의 코 수를 입력하세요',
          )
      ),
    );
  }
}

class DoanGage extends StatefulWidget {
  const DoanGage({super.key});

  @override
  State<DoanGage> createState() => _DoanGageState();
}

class _DoanGageState extends State<DoanGage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: const TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: '도안의 게이지를 입력하세요',
          )
      ),
    );
  }
}

class MyGage extends StatefulWidget {
  const MyGage({super.key});

  @override
  State<MyGage> createState() => _MyGageState();
}

class _MyGageState extends State<MyGage> {
  @override
  Widget build(BuildContext context) {
    return const Text('나의 게이지는 0 입니다');
  }
}

class Calculation extends StatelessWidget {
  const Calculation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: () {
          // Calculate
        },
        child: const Text('계산하기'),
      ),
    );
  }
}
