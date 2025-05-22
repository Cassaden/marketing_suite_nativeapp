import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portable Text Field',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(child: Container(color: Colors.blue)),
              PortableTextField(),
            ],
          ),
        ),
      ),
    );
  }
}

class PortableTextField extends StatefulWidget {
  const PortableTextField({super.key});

  @override
  State<PortableTextField> createState() => _PortableTextFieldState();
}

class _PortableTextFieldState extends State<PortableTextField> {
  OverlayPortalController _overlayPortalController = OverlayPortalController();

  GlobalKey _textFieldGlobalKey = GlobalKey();
  FocusNode _textFieldFocusNode = FocusNode();
  double _textFieldHeight = 0;
  bool _textFieldIsInFocus = false;

  @override
  initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((context) {
      _overlayPortalController.show();
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final RenderBox _textFieldRenderBox =
            _textFieldGlobalKey.currentContext?.findRenderObject() as RenderBox;
        setState(() => _textFieldHeight = _textFieldRenderBox.size.height);
      });
    });

    _textFieldFocusNode.addListener(() {
      if (_textFieldIsInFocus != _textFieldFocusNode.hasFocus) {
        setState(() => _textFieldIsInFocus = _textFieldFocusNode.hasFocus);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return OverlayPortal(
      controller: _overlayPortalController,
      overlayChildBuilder: (context) {
        return Positioned(
          left: 0,
          right: 0,
          bottom: MediaQuery.of(context).viewInsets.bottom,
          child: TextField(
            key: _textFieldGlobalKey,
            focusNode: _textFieldFocusNode,
          ),
        );
      },
      child: SizedBox(height: _textFieldIsInFocus ? 0 : _textFieldHeight),
    );
  }
}
