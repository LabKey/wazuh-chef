#
# Cookbook Name:: wazuh-elastic
# Recipe:: java

# Create user and group
#
case node['platform']
when 'ubuntu'

  apt_update 'update'

  package 'openjdk-8-jre'

when 'redhat', 'centos'

  package 'java-1.8.0-openjdk'

end
