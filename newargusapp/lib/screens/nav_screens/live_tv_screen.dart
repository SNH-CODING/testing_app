import 'package:flutter/material.dart';

class LiveTvScreen extends StatefulWidget {
  const LiveTvScreen({Key? key}) : super(key: key);

  @override
  State<LiveTvScreen> createState() => _LiveTvScreenState();
}

class _LiveTvScreenState extends State<LiveTvScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("TV Screen"),
      ),
    );
  }
}
