import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_issues/domain/entities/github_issue.dart';

part 'graph_issues_payload.freezed.dart';
part 'graph_issues_payload.g.dart';

@freezed
class GraphIssuesPayload with _$GraphIssuesPayload {
  factory GraphIssuesPayload({
    @JsonKey(name: 'nodes') List<GithubIssue?>? issues,
  }) = _GraphIssuespayload;

  factory GraphIssuesPayload.fromJson(Map<String, dynamic> json) =>
      _$GraphIssuesPayloadFromJson(json);
}
