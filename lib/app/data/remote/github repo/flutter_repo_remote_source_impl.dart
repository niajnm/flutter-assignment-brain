import 'package:dio/dio.dart';
import 'package:flutter_assessment/app/core/base/base_remote_source.dart';
import 'package:flutter_assessment/app/core/values/api_end_points.dart';

import 'flutter_repo_remote_source.dart';
import 'model/github_repository_params.dart';
import 'model/github_repository_response.dart';

class GitHubRepositoryRemoteSourceImpl extends BaseRemoteSource
    implements GitHubRepositoryRemoteSource {
  @override
  Future<RemoteGitHubRepositoryResponse> getRepositoryList(
      GitHubRepositoryParams params) async {
    String endpoint = ApiEndPoints.repositoryListEndPoint;
    var dioCall = dioClient.get(endpoint, queryParameters: params.toJson());

    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => _parseRemoteGitHubRepositoryResponse(response));
    } catch (e) {
      rethrow;
    }
  }

  RemoteGitHubRepositoryResponse _parseRemoteGitHubRepositoryResponse(
      Response<dynamic> response) {
    return RemoteGitHubRepositoryResponse.fromJson(response.data);
  }
}
