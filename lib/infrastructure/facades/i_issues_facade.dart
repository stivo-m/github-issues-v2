import 'package:github_issues/domain/entities/github_issue.dart';

abstract class IissuesFacade {
  Future<List<GithubIssue>> getIssues({
    int? count,
  });

  Future<GithubIssue> getIssue({
    required String issueID,
  });
}
