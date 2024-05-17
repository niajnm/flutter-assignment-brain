import 'dart:developer';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/core/route/route_paths.dart';
import 'package:flutter_assessment/app/core/values/app_values.dart';
import 'package:flutter_assessment/app/data/local/repo/model/repository_entity.dart';
import 'package:flutter_assessment/app/modules/home/controller/home_controller.dart';
import 'package:flutter_assessment/app/utils/context_ext.dart';
import 'package:provider/provider.dart';

enum SortOption { byStars, byUpdate }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      Provider.of<HomeController>(context, listen: false).fetchRepositoryList();
    });
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        if (!Provider.of<HomeController>(context, listen: false).isLoading) {
          Provider.of<HomeController>(context, listen: false)
              .fetchRepositoryList();
        }
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var controller = Provider.of<HomeController>(context, listen: true);
    _showErrorSnackbar(controller);
    return Scaffold(
        appBar: _homeAppBar(),
        body:
            controller.errorMessage != null && controller.repositoryList.isEmpty
                ? _errorText(controller)
                : _listView(controller));
  }

  Widget _errorText(HomeController controller) {
    return Center(child: Text(controller.errorMessage.toString()));
  }

  void _showErrorSnackbar(HomeController controller) {
    if (controller.errorMessage != null &&
        controller.repositoryList.isNotEmpty) {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        context.showErrorSnackbar(controller.errorMessage!);
      });
    }
  }

  Widget _listView(HomeController controller) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        controller.repositoryList.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : Expanded(
                child: ListView.builder(
                    itemCount: controller.repositoryList.length + 1,
                    controller: scrollController,
                    itemBuilder: (_, index) {
                      if (index < controller.repositoryList.length) {
                        RepositoryEntity? item =
                            controller.repositoryList[index];
                        return _homeItem(item);
                      } else {
                        return controller.isLoading
                            ? const Padding(
                                padding: EdgeInsets.all(AppValues.padding_10),
                                child: Center(
                                  child: CircularProgressIndicator(),
                                ),
                              )
                            : Container();
                      }
                    }),
              ),
      ],
    );
  }

  Widget _homeItem(RepositoryEntity item) {
    return Column(
      children: [
        Card(
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: SizedBox(
                height: 45,
                child: ClipOval(
                    child: CachedNetworkImage(imageUrl: item.imageUrl)),
              ),
            ),
            title: Text(
              item.name,
              maxLines: 1,
            ),
            subtitle: Text(
              item.description,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            // trailing: SizedBox(
            //   height: 45,
            //   child: CircleAvatar(
            //     radius: 30,
            //     child: ClipOval(
            //         child: CachedNetworkImage(imageUrl: item.imageUrl)),
            //   ),
            // ),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, RoutePaths.detailsPage, (route) => true,
                  arguments: item);
            },
          ),
        )
      ],
    );
  }

  PreferredSizeWidget _homeAppBar() {
    return AppBar(
      title: const Text("Home"),
      actions: [
        PopupMenuButton<SortOption>(
          onSelected: (SortOption result) {
            Provider.of<HomeController>(context, listen: false)
                .setSortOption(result.name);
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<SortOption>>[
            const PopupMenuItem<SortOption>(
              value: SortOption.byStars,
              child: Text('Sort by Stars'),
            ),
            const PopupMenuItem<SortOption>(
              value: SortOption.byUpdate,
              child: Text('Sort by Data-Time'),
            ),
          ],
        ),
      ],
    );
  }
}
