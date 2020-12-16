#
# Cookbook:: oci_caas_base
# Recipe:: default
#

include_recipe '::base'
include_recipe '::clamav'
include_recipe '::suricata'
include_recipe '::scanning'