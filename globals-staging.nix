pkgs: {

  deploymentName = "rc-staging";

  domain = "awstest.iohkdev.io";

  environmentName = "staging";

  topology = import ./topologies/staging.nix;

  ec2 = {
    credentials = {
      accessKeyIds = {
        IOHK = "iohk";
        Emurgo = "fifth-party";
        CF = "third-party";
        dns = "dns";
      };
    };
  };
}