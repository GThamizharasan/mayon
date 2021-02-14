import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({@required this.child, @required this.onPressed});
  final Widget child;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) => OutlinedButton(
        style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.deepPurple),
            minimumSize: Size.fromHeight(50)),
        onPressed: onPressed,
        child: child,
      );
}

class SingInStyledButton extends StatelessWidget {
  const SingInStyledButton({@required this.child, @required this.onPressed});
  final Widget child;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) => OutlinedButton(
        style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.deepPurple),
            minimumSize: Size.fromHeight(50)),
        onPressed: onPressed,
        child: child,
      );
}

class Header extends StatelessWidget {
  const Header(this.heading);
  final String heading;
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Text(
          heading,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      );
}

class Paragraph extends StatelessWidget {
  const Paragraph(this.content);
  final String content;
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Text(
          content,
          style: TextStyle(fontSize: 18),
        ),
      );
}

class AppTitle extends StatelessWidget {
  const AppTitle(this.heading);
  final String heading;
  @override
  Widget build(BuildContext context) => Text(
        heading,
        style: Theme.of(context).textTheme.headline1,
      );
}
