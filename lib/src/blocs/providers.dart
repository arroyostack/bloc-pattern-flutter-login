import "package:flutter/material.dart";
import "bloc.dart";

class Provider extends InheritedWidget {
  final Bloc bloc = Bloc();

  Provider({Key? key, required Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  // Returns the bloc instance from the nearest Provider up the widget tree.
  // The context belong to the widget that is being built.
  static Bloc? of(BuildContext context, [Type? type]) {
    // Remember: This will make a widget looks up its parents contexst until it find the nearest Provider.
    // It will return the bloc instance from the Provider.
    return context.dependOnInheritedWidgetOfExactType<Provider>()?.bloc;
  }
}
