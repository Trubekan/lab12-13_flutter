import 'package:flutter/material.dart';


class H1 extends StatefulWidget {
  const H1(this.text, {super.key , this.color});

  final String text ;
  final Color? color;

  @override
  State<H1> createState() => _H1State();
}

class _H1State extends State<H1> {
  @override
  Widget build(BuildContext context) {
    return Text(
          widget.text,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: widget.color
               ),
        );
  }
}