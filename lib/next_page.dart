import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.red,
      child: const Center(
        child: Text("Next Page")
      ),
    );
  }
}