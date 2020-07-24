import 'package:flutter/material.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';

import '../../../utils/presentation/widgets/height_container.dart';

class LoadingViewBuilder extends StatelessWidget {
  const LoadingViewBuilder({
    Key key,
    @required this.pagewiseController,
    @required this.paddingValue,
  }) : super(key: key);

  final PagewiseLoadController pagewiseController;
  final double paddingValue;

  @override
  Widget build(BuildContext context) {
    if (isNotInitialLoading()) {
      return const CircularProgressIndicator();
    }

    // For some reason, this listview has padding that can't be edited.
    const paddingReducer = -40.0;

    final totalReducer = paddingReducer - (2 * paddingValue);
    return HeightContainer(
      addedHeight: totalReducer,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  bool isNotInitialLoading() {
    return pagewiseController.numberOfLoadedPages != 0;
  }
}
