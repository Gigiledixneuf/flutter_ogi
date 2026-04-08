import 'package:flutter/material.dart';

class ExerceLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ExerceLayout")),
      body: Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: Container(
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  ),
                onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Clique moi"),
                  )
                );
              }, child: Text("Clique moi", style: TextStyle(color: Colors.black),),),
          ]),
        )
        ),
    );
  }
}
