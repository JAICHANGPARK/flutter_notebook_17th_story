import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_17th/ep1014_movie_finder_app/src/api/movie_api.dart';
import 'package:flutter_notebook_17th/ep1014_movie_finder_app/src/model/movies.dart';
import 'package:flutter_notebook_17th/ep1014_movie_finder_app/src/riverpod/movie_provider.dart';
import 'package:flutter_notebook_17th/ep1014_movie_finder_app/src/riverpod/movie_search_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MovieFinderHomePage extends StatelessWidget {
  const MovieFinderHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // getMovies();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Find movies like",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[300]!,
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Consumer(
                    builder: (BuildContext context, WidgetRef ref, Widget? child) {
                      final _controller = ref.watch(movieSearchProvider);
                      return TextField(
                        controller: _controller,
                        onSubmitted: (s) {
                          print("onSubmitted: ${s}");
                        },
                        onEditingComplete: () {
                          print("onEditingComplete: ${_controller.text}");
                        },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(Icons.search),
                          hintText: "try \"Lucy\"",
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("❤ For you"),
                    const SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      height: 160,
                      child: Consumer(
                        builder: (BuildContext context, WidgetRef ref, Widget? child) {
                          final items = ref.watch(movieProvider);
                          return items.when(data: (movies) {
                            var item = movies?.data?.movies;
                            return ListView.builder(
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Container(
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(8),
                                        image: DecorationImage(
                                            image: CachedNetworkImageProvider(
                                              item?[index].mediumCoverImage ?? "",
                                            ),
                                            fit: BoxFit.cover)),
                                  ),
                                );
                              },
                              itemCount: item?.length,
                              scrollDirection: Axis.horizontal,
                            );
                          }, error: (error, stack) {
                            print("is error");
                            return const Text("error");
                          }, loading: () {
                            print("is Loading");
                            return const Center(child: CircularProgressIndicator());
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Text("🔥 Popular movies"),
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Consumer(
                        builder: (BuildContext context, WidgetRef ref, Widget? child) {
                          Future<Movies?> futureItems = ref.watch(movieProvider.future);
                          return FutureBuilder<Movies?>(
                            future: futureItems,
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                var item = snapshot.data?.data?.movies;

                                return GridView.builder(
                                  itemCount: item?.length,
                                  shrinkWrap: true,
                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    childAspectRatio: 6 / 8,
                                  ),
                                  itemBuilder: (context, index) {
                                    return Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: CachedNetworkImageProvider(
                                                item?[index].backgroundImage ?? "",
                                              ),
                                              fit: BoxFit.cover)),
                                    );
                                  },
                                );
                              }
                              return const Center(
                                child: const CircularProgressIndicator(),
                              );
                            },
                          );
                        },
                      ),
                    )
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
