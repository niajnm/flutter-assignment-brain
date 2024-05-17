import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/core/values/app_values.dart';
import 'package:flutter_assessment/app/data/local/repo/model/repository_entity.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsPage extends StatelessWidget {
  final RepositoryEntity repo;
  const DetailsPage({super.key, required this.repo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
        automaticallyImplyLeading: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(AppValues.padding_16).r,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [_ownerImage(), _ownerName()],
                ),
              ),
              _divider(context),
              Card(
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(AppValues.padding_8).r,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _repoName(),
                        _description(),
                        _repoLanguage(),
                        _updatedAt(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _repoName() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _title("Repo name"),
        Text(repo.name),
        const SizedBox(
          height: 8,
        )
      ],
    );
  }

  Widget _ownerName() {
    return Text(repo.login);
  }

  Widget _description() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _title("Repo description"),
        Text(repo.description),
        const SizedBox(
          height: 8,
        )
      ],
    );
  }

  Widget _updatedAt() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [_title("Last update time"), Text(repo.updatedAt)],
    );
  }

  Widget _repoLanguage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _title("Repo language"),
        Text(repo.language),
        const SizedBox(
          height: 8,
        )
      ],
    );
  }

  Widget _title(String name) {
    return Builder(builder: (context) {
      return Text(
        name,
        style: Theme.of(context).textTheme.labelSmall,
      );
    });
  }

  Widget _ownerImage() {
    return ClipOval(
        child: CachedNetworkImage(
      imageUrl: repo.imageUrl,
      height: 120.h,
      width: 110.h,
    ));
  }

  Widget _divider(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Divider(
        color: Theme.of(context).dividerColor,
        height: 1,
      ),
    );
  }
}
