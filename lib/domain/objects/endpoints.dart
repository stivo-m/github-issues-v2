// Package imports:
import 'package:flutter_dotenv/flutter_dotenv.dart';

String githubAuthEndpoint =
    'https://github.com/login/oauth/authorize?client_id=${dotenv.env['GITHUB_CLIENT_ID']}&scope=public_repo%20read:user%20user:email';

const String githubAccessTokenEndpoint =
    'https://github.com/login/oauth/access_token';
const String githubGraphqlEndpoint = 'https://api.github.com/graphql';
