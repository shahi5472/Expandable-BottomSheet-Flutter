import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Expandable bottom sheet',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DraggableHome(
      title: const Text("Draggable Home"),
      headerWidget: headerWidget(context),
      headerExpandedHeight: 0.7,
      body: List.generate(30, (index) {
        return Image.network(
          "https://picsum.photos/200/300?random=${index + 1}",
          height: 300,
          width: double.infinity,
          fit: BoxFit.cover,
        );
      }),
      curvedBodyRadius: 0.0,
    );
  }

  Widget headerWidget(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 100,
      child: Center(
        child: Text(
          "Title",
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(color: Colors.white70),
        ),
      ),
    );
  }
}
