abstract class ICacheFacade {
  Future<bool> saveAccessToken({
    required String tokenName,
    required String token,
  });

  Future<bool> removeAccessToken({required String tokenName});
}
