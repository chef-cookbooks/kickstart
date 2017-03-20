require 'spec_helper'

describe 'default recipe' do
  let(:chef_run) do
    runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '6.8')
    runner.converge('kickstart::server')
  end

  it 'converges successfully' do
    expect { chef_run }.to_not raise_error
  end
end
