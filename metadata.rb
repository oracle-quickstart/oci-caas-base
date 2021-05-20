name 'oci_caas_base'
maintainer 'Jon DeCamp (OCI CaaS)'
maintainer_email 'jon.dcamp@oracle.com'
license 'Universal Permissive License v1.0'
description 'Base cookbook for OCI CAAS'
version '0.4.0'
chef_version '>= 16.0'

depends 'clamav', '~> 1.3.0'
depends 'yum', '~> 3.13.0'
depends 'cron', '~> 1.7.6'

issues_url 'https://github.com/oracle-quickstart/oci-caas-base/issues'
source_url 'https://github.com/oracle-quickstart/oci-caas-base'