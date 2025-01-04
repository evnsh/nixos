{pkgs, ...}: {
  services.postgresql = {
    enable = true;
    enableTCPIP = true;
    authentication = pkgs.lib.mkOverride 10 ''
      #...
      #type database DBuser origin-address auth-method
      # ipv4
      host  all      all     127.0.0.1/32   scram-sha-256
      # ipv6
      host all       all     ::1/128        scram-sha-256
      # local
      local all       all     trust
    '';
    initialScript = pkgs.writeText "backend-initScript" ''
      CREATE ROLE evan WITH LOGIN PASSWORD 'evan' CREATEDB;
      CREATE DATABASE evan;
      GRANT ALL PRIVILEGES ON DATABASE evan TO evan;
    '';
  };
}
