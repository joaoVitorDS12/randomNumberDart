import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dados'),
          backgroundColor: Colors.blue,
        ),
        body: _novaPaginaDados(),
      ),
    ),
  );
}

class _novaPaginaDados extends StatefulWidget {

  const _novaPaginaDados({Key? key}) : super(key:key);

  @override
  State<_novaPaginaDados> createState() => new __novaPaginaDadosState();
}

class __novaPaginaDadosState extends State<_novaPaginaDados> {
  final _random = Random();
  int next(int min, int max) => min + _random.nextInt(max - min);

  int n1 = 1;
  int n2 = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: FlatButton(
            onPressed: (){
              setState((){
                n1 = next(1, 6);
              });
            },
            child: Image.asset('images/dado$n1.png'),
          ),
          ),
          Expanded(child: FlatButton(
            onPressed: (){
              setState((){
                n2 = next(1, 6);
              });
            },
            child: Image.asset('images/dado$n2.png'),
          ),
          ),
        ],
      ),
    );
  }
}