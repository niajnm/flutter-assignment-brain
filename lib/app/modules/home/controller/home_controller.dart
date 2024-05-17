import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/core/services/service_locator.dart';
import 'package:flutter_assessment/app/data/local/repo/model/repository_entity.dart';
import 'package:flutter_assessment/app/data/remote/github%20repo/model/github_repository_params.dart';
import 'package:flutter_assessment/app/data/repository/repository/repo/flutter_repository.dart';
import 'package:flutter_assessment/app/modules/home/view/home_page.dart';
import 'package:flutter_assessment/app/utils/constants.dart';

class HomeController extends ChangeNotifier {
  final GitHubRepository _repository = serviceLocator<GitHubRepository>();

  List<RepositoryEntity> repositoryList = [];
  int _page = 1;
  bool _isLoading = false;
  String _sortKey = sortByStars;
  String? _errorMessage;

  String? get errorMessage => _errorMessage;
  bool get isLoading => _isLoading;

  Future<void> fetchRepositoryList() async {
    if (_isLoading) {
      return; // Avoid making multiple requests while one is in progress
    }

    _isLoading = true;
    notifyListeners();

    GitHubRepositoryParams params =
        GitHubRepositoryParams(pageNo: _page, sortBy: _sortKey);
    try {
      _errorMessage = null;
      var value = await _repository.getRepositoryList(params);
      repositoryList.addAll(value);
      notifyListeners();
      _page++;
    } catch (error) {
      _errorMessage = error.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void setSortOption(String sortBy) async {
    _page = 1;
    if (sortBy == SortOption.byStars.name) {
      _sortKey = sortByStars;
    } else {
      _sortKey = sortByUpdatedTime;
    }

    try {
      _errorMessage = null;
      GitHubRepositoryParams params =
          GitHubRepositoryParams(pageNo: _page, sortBy: _sortKey);

      var value = await _repository.getRepositoryList(params);
      repositoryList.clear();
      repositoryList.addAll(value);
      notifyListeners();
    } catch (error) {
      _errorMessage = error.toString();
    }
  }
}
