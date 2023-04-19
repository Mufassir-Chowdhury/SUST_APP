import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sust_app/routes/management/department/add_department.dart';

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

class SimpleListBuilder<T> extends StatelessWidget {
  const SimpleListBuilder(
      {super.key, required this.nameList, required this.onPressed});
  final Future<List<T?>> nameList;
  final Function(String name, String id) onPressed;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
        future: nameList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return AnimationLimiter(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return AnimationConfiguration.staggeredList(
                    position: index,
                    duration: const Duration(milliseconds: 375),
                    child: SlideAnimation(
                      verticalOffset: 50.0,
                      child: FadeInAnimation(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Card(
                            padding: const EdgeInsets.all(5),
                            child: ListTile(
                              title: Text(snapshot.data![index]!.title),
                              onPressed: () {
                                onPressed(snapshot.data![index]!.title,
                                    snapshot.data![index]!.id);
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          }
          return const Center(
            child: ProgressBar(),
          );
        });
  }
}

class SimpleListPage<T> extends StatefulWidget {
  const SimpleListPage(
      {super.key,
      required this.root,
      required this.loadNames,
      required this.detailsPage});
  final String root;
  final Function() loadNames;
  final Function(String id) detailsPage;

  @override
  State<SimpleListPage> createState() => _SimpleListPageState<T>();
}

class _SimpleListPageState<T> extends State<SimpleListPage> {
  int _selectedIndex = 0;
  late Future<List<T?>> listofNames;
  late List<Widget> pages;
  String title = '';

  @override
  void initState() {
    super.initState();
    loadListPage();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: Header(
        name: title,
        onHeaderPress: () {
          loadListPage();
        },
        onAddPress: () {
          setState(
            () {
              pages = [simpleListPage()];

              pages.add(
                AddDepartment(
                  onPressed: loadListPage,
                ).animate().fade().slideY(
                      begin: .25,
                      end: 0,
                      duration: 400.ms,
                      curve: Curves.easeOut,
                    ),
              );
              _selectedIndex = 1;
              title = '${widget.root} > Add ${widget.root.toLowerCase()}';
            },
          );
        },
      ),
      content: pages[_selectedIndex],
    );
  }

  void loadListPage() {
    setState(() {
      pages = [simpleListPage()];
    });
  }

  SimpleListBuilder<T> simpleListPage() {
    _selectedIndex = 0;
    title = widget.root;
    return SimpleListBuilder<T>(
        nameList: widget.loadNames(),
        onPressed: (name, id) {
          setState(() {
            pages.add(widget.detailsPage(id));
            title = '${widget.root} > $name';
            _selectedIndex = 1;
          });
        });
  }
}
