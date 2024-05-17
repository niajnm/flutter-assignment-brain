import 'package:flutter_assessment/app/data/local/repo/model/repository_entity.dart';
import 'package:flutter_assessment/app/data/remote/github%20repo/flutter_repo_remote_source.dart';
import 'package:flutter_assessment/app/data/remote/github%20repo/model/github_repository.dart';
import 'package:flutter_assessment/app/data/remote/github%20repo/model/github_repository_params.dart';
import 'flutter_repository.dart';

class GitHubRepositoryImpl implements GitHubRepository {
  final GitHubRepositoryRemoteSource remoteSource;

  GitHubRepositoryImpl({
    required this.remoteSource,
  });

  @override
  Future<List<RepositoryEntity>> getRepositoryList(
      GitHubRepositoryParams params) async {
    try {
      final remoteData = await remoteSource.getRepositoryList(params);

      return convertGitHubRepositoriesToEntities(remoteData.items);
    } catch (error) {
      rethrow;
    }
  }

  List<RepositoryEntity> convertGitHubRepositoriesToEntities(
    List<RemoteGitHubRepository>? repos,
  ) {
    return repos?.map((repo) {
          return RepositoryEntity(
            id: repo.id,
            name: repo.name,
            fullName: repo.fullName,
            description: repo.description,
            login: repo.owner.login,
            imageUrl: repo.owner.avatar,
            updatedAt: repo.updatedAt,
            language: repo.language,
          );
        }).toList() ??
        [];
  }
}
