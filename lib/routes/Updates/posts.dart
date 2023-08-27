import 'package:fluent_ui/fluent_ui.dart';
import 'package:provider/provider.dart';
import 'package:sust_app/components/database_models/post/post_model.dart';
import 'package:sust_app/components/profile_model.dart';

class Posts extends StatefulWidget {
  const Posts({super.key});

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  Future<List<PostModel>> loadPosts() async {
    return PostModel.getPosts();
  }

  @override
  void initState() {
    super.initState();
    posts = loadPosts();
  }

  late Future<List<PostModel>> posts;
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: PageHeader(
        title: const Text('Posts'),
        commandBar: Provider.of<ProfileModel>(context).type != 'admin'
            ? null
            : SizedBox(
                width: 200,
                child: CommandBar(
                  mainAxisAlignment: MainAxisAlignment.end,
                  overflowBehavior: CommandBarOverflowBehavior.noWrap,
                  primaryItems: [
                    CommandBarBuilderItem(
                      builder: (context, mode, w) => w,
                      wrappedItem: CommandBarButton(
                        onPressed: () {
                          // onAddPress();
                        },
                        label: const Text('Add'),
                        icon: const Icon(FluentIcons.add),
                      ),
                    ),
                  ],
                ),
              ),
      ),
      content: Center(
        child: FutureBuilder<List<PostModel>>(
          future: posts,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  DateTime time =
                      DateTime.parse(snapshot.data![index].info!.date!);
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            snapshot.data![index].info!.title!,
                            style: FluentTheme.of(context).typography.bodyLarge,
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const CircleAvatar(),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    snapshot.data![index].name!,
                                    style: FluentTheme.of(context)
                                        .typography
                                        .bodyStrong,
                                  ),
                                  Text(
                                    '${time.day} / ${time.month} / ${time.year}',
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            snapshot.data![index].description!,
                            style: FluentTheme.of(context).typography.body,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const Text('Loading...');
          },
        ),
      ),
    );
  }
}
