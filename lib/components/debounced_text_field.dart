import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class DebouncedTextField extends StatefulWidget {
  final Function(String) onSearchChanged;
  const DebouncedTextField({super.key, required this.onSearchChanged});

  @override
  State<DebouncedTextField> createState() => _DebouncedTextFieldState();
}

class _DebouncedTextFieldState extends State<DebouncedTextField> {
  Timer? debounce;
  final TextEditingController _controller = TextEditingController();
  final getIt = GetIt.instance;
  late FocusNode localFocusNode;

  onChanged(String query) {
    if (debounce?.isActive ?? false) debounce!.cancel();

    debounce = Timer(const Duration(milliseconds: 300), () {
      widget.onSearchChanged(_controller.text);
      //getIt<NewsService>().searchNews(_controller.text);
      debounce?.cancel();
    });
  }

  @override
  void initState() {
    localFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    debounce?.cancel();
    localFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: const InputDecoration(
            border: OutlineInputBorder(),
            contentPadding:
                EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0)),
        onTapOutside: (event) => {localFocusNode.unfocus()},
        focusNode: localFocusNode,
        autofocus: true,
        controller: _controller,
        onChanged: onChanged);
  }
}
