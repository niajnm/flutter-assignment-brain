import 'dart:developer';
import 'package:flutter_assessment/app/data/local/db/database_helper.dart';
import 'package:flutter_assessment/app/data/local/preference/pref_manager.dart';
import 'package:flutter_assessment/app/data/local/preference/pref_manager_impl.dart';

import 'package:flutter_assessment/app/data/remote/github%20repo/flutter_repo_remote_source.dart';
import 'package:flutter_assessment/app/data/remote/github%20repo/flutter_repo_remote_source_impl.dart';
import 'package:flutter_assessment/app/data/repository/repository/repo/flutter_repository.dart';
import 'package:flutter_assessment/app/data/repository/repository/repo/futter_repository_impl.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

class ServiceLocator {
  static Future<void> setUpServiceLocator() async {
    serviceLocator
        .registerLazySingleton<GitHubRepository>(() => GitHubRepositoryImpl(
              remoteSource: serviceLocator(),
            ));

    serviceLocator.registerLazySingleton<GitHubRepositoryRemoteSource>(
        () => GitHubRepositoryRemoteSourceImpl());

    serviceLocator.registerFactory<DatabaseHelper>(() => DatabaseHelper());

    serviceLocator.registerLazySingleton<PrefManager>(() => PrefManagerImpl());
  }
}
