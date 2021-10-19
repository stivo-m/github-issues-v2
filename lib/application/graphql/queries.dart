String getIssuesQuerry = r'''
query GetIssues($count: Int!){
  viewer {
    issues(last: $count) {
      pageInfo {
        startCursor
        hasNextPage
        endCursor
        hasPreviousPage
      }
      totalCount
      nodes {
        databaseId
        closed
        closedAt
        createdAt
        author {
          login
        }
        labels(first: 100) {
          nodes {
            id
            description
          }
        }
        repository {
          id
          name
          
        }
        title
        body
        comments(first: 100) {
          totalCount
          nodes {
            author {
              login
            }
            body
            createdAt
            id
            publishedAt
          }
        }
      }
    }
  }
}


''';

Map<String, dynamic> getIssuesQueryVariables({required int count}) {
  return {
    'count': count,
  };
}
