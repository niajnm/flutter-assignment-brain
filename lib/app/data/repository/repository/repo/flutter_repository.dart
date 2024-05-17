import 'package:flutter_assessment/app/data/local/repo/model/repository_entity.dart';
import 'package:flutter_assessment/app/data/remote/github%20repo/model/github_repository_params.dart';

abstract class GitHubRepository {
  Future<List<RepositoryEntity>> getRepositoryList(
      GitHubRepositoryParams params);
}
