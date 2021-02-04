# oci_caas_base Cookbook

## Description
This cookbook is the base cookbook for oci_caas cookbooks, providing
common recipes and configurations.

## Requirements

### Platforms
* Oracle Autonomous Linux 7.8+

### Chef
* Chef 16+

### Cookbooks
* clamav
* yum
* cron

## Attributes
n/a

## Recipes
### base
Sets up additional yum repositories;
schedules the Chef client via cron; configures chrony for time synchronization.

### clamav
A fork of the clamav cookbook, tweaked to work in Oracle Autonomous Linux.
Installs and configures clamav; schedules scanning via cron.

### scanning
Installs host scanning tools and schedules regular scans.

### suricata
Installs and configures Suricata, with updates via cron.

### default
The default recipe will run all of the other recipes in the recommended order.

## Usage
You can add individual recipes to the runlist, or run the default recipe.

## License
Copyright (c) 2020, 2021 Oracle and/or its affiliates. All rights reserved.

Licensed under the Universal Permissive License 1.0

See [LICENSE](LICENSE) for more details.