#
# Cookbook Name:: db_backup
# Recipe:: default
#

template "/engineyard/bin/db_backup.rb" do
  source "db_backup.rb.erb"
  owner "root"
  group "root"
  mode 0755
  variables({
    :applications => node[:applications]
  })
end
