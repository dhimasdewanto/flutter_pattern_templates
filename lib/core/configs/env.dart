enum Env {
  prod,
  dev,
}

extension EnvX on Env {
  String get value {
    switch (this) {
      case Env.prod:
        return 'prod';
      case Env.dev:
        return 'dev';
      default:
        return "dev";
    }
  }
}