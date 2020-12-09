#
# Cookbook:: oci_caas_base
# Recipe:: base
#

cookbook_file '/etc/yum.repos.d/oracle-linux-ol7.repo' do
  source 'oracle-linux-ol7.repo'
  owner 'root'
  group 'root'
  mode '0644'
end

include_recipe 'yum-epel'
# cookbook_file '/etc/yum.repos.d/epel.repo' do
#   source 'epel.repo'
#   owner 'root'
#   group 'root'
#   mode '0644'
# end

cron 'chef_client' do
  action :create
  minute '0,15,30,45'
  user 'root'
  home '/opt/oci-caas/chef'
  command 'chef-client -z --runlist oci_caas_base -j /opt/oci-caas/chef/attributes.json'
end

# Install, configure, and enable chrony client
package 'chrony'

cookbook_file '/etc/chrony.conf' do
  source 'chrony.conf'
  owner 'root'
  group 'root'
  mode '0644'
end

service 'chronyd' do
  action :enable
end