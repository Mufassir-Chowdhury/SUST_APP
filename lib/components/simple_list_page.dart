import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Header extends StatelessWidget {
  const Header(
      {super.key,
      required this.name,
      required this.onHeaderPress,
      required this.onAddPress});
  final String name;
  final VoidCallback onHeaderPress;
  final VoidCallback onAddPress;

  @override
  Widget build(BuildContext context) {
    return PageHeader(
      title: GestureDetector(
        child: Text(
          name,
          overflow: TextOverflow.ellipsis,
        ).animate().fade(duration: 500.ms, delay: 200.ms).slide(),
        onTap: () {
          onHeaderPress();
        },
      ),
      commandBar: SizedBox(
        width: 200,
        child: CommandBar(
          mainAxisAlignment: MainAxisAlignment.end,
          overflowBehavior: CommandBarOverflowBehavior.noWrap,
          primaryItems: [
            CommandBarBuilderItem(
              builder: (context, mode, w) => w,
              wrappedItem: CommandBarButton(
                onPressed: () {
                  onAddPress();
                },
                label: const Text('Add'),
                icon: const Icon(FluentIcons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
