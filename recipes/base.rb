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

cron 'cinc_client' do
  action :create
  minute '0,15,30,45'
  user 'root'
  home '/opt/oci-caas/cinc'
  command "cinc-client -z --runlist #{node['runlist_name']} -j /opt/oci-caas/cinc/attributes.json"
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

cookbook_file '/etc/profile.d/autologout.sh' do
  source 'autologout.sh'
  owner 'root'
  group 'root'
  mode '0755'
end