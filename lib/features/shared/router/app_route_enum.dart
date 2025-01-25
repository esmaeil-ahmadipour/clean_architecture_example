enum AppRoute {
  splash,
  login,
  details;

  String get fullPath => '/$name';
  String get path => name;
}
