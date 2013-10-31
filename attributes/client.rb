default["percona"]["client"]["package_version"]   = "percona-server-client"

case node["platform_family"]
when "debian"
  normal['mysql']['client']['packages']           = ["libmysqlclient-dev", node.percona.client.package_version]
when "rhel"
  normal['mysql']['client']['packages']           = ["Percona-Server-client-55"]
end
