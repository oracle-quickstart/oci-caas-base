name 'oci_caas_base'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'Universal Permissive License v1.0'
description 'Base cookbook for OCI CAAS'
version '0.2.0'
chef_version '>= 16.0'

depends 'wazuh_agent'
depends 'clamav', '~> 1.3.0'
depends 'yum', '~> 3.13.0'
depends 'cron', '~> 1.7.6'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/oci_caas_base/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/oci_caas_base'
