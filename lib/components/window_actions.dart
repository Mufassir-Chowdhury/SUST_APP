import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:window_manager/window_manager.dart';

class WindowActions extends StatelessWidget {
  const WindowActions({super.key});

  @override
  Widget build(BuildContext context) {
    return WindowTitleBarBox(
      child: Row(
        children: [
          Expanded(child: MoveWindow()),
          IconButton(
            icon: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Icon(
                FluentIcons.chrome_minimize,
                size: 15,
                color: Colors.grey,
              ),
            ),
            onPressed: () {
              windowManager.minimize();
            },
          ),
          IconButton(
            icon: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Icon(
                FluentIcons.full_screen,
                size: 15,
                color: Colors.grey,
              ),
            ),
            onPressed: () {
              windowManager.hide();
            },
          ),
          IconButton(
            icon: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Icon(
                FluentIcons.cancel,
                size: 15,
                color: Colors.grey,
              ),
            ),
            onPressed: () {
              windowManager.close();
            },
          ),
        ],
      ),
    );
  }
}
