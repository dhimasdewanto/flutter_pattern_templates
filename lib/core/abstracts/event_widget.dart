import 'package:flutter/material.dart';

class EventWidget extends StatefulWidget {
  const EventWidget({
    Key? key,
    required this.builder,
    this.initState,
    this.dispose,
    this.afterBuild,
  }) : super(key: key);

  final Widget Function(BuildContext context) builder;
  final void Function()? initState;
  final void Function()? dispose;
  final void Function(BuildContext context)? afterBuild;

  @override
  State<EventWidget> createState() => _EventWidgetState();
}

class _EventWidgetState extends State<EventWidget> {
  @override
  void initState() {
    super.initState();
    final initState = widget.initState;
    if (initState != null) {
      initState();
    }

    final afterBuild = widget.afterBuild;
    if (afterBuild != null) {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) {
          afterBuild(context);
        },
      );
    }
  }

  @override
  void dispose() {
    final dispose = widget.dispose;
    if (dispose != null) {
      dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context);
  }
}
