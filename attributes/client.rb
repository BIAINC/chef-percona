case node["platform_family"]
when "debian"
  normal['mysql']['client']['packages'] = %w{libmysqlclient-dev percona-server-client}
when "rhel"
  normal['mysql']['client']['packages'] = %w{Percona-Server-client-55}
end
