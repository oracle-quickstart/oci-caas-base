#
# Cookbook:: oci_caas_base
# Spec:: default
#

require 'spec_helper'

describe 'oci_caas_base::default' do
  context 'When all attributes are default, on Ubuntu 20.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '20.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end

  context 'When all attributes are default, on CentOS 8' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'centos', '8'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
