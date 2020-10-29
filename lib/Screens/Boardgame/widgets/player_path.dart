import 'package:flutter/material.dart';

class PlayerPath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          for(var i=0;i<3;i++)
            Expanded(
              child: Container(
                color: (i%2 == 0)?Colors.redAccent:Colors.yellow,
              ),
            )
        ],
      ),
    );
  }
}
