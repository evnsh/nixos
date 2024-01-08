{inputs, ...}: {
  imports = [inputs.pre-commit-hooks.flakeModule];

  perSystem.pre-commit = {
    check.enable = true;

    settings.excludes = ["flake.lock"];

    settings.hooks = {
      alejandra.enable = true;
      actionlint.enable = true;
      prettier.enable = true;
      treefmt.enable = true;
    };
  };
}