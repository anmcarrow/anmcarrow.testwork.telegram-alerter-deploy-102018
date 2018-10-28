require "serverspec"

describe package( 'docker-ce' ) do
    it { should be_installed }
    end

describe service('docker') do
  it { should be_enabled }
  it { should be_running }
  end

describe docker_image('anmcarrow/alerter:latest') do
  it { should exist }
end

describe docker_container('alerter') do
  it { should exist }
  it { should be_running }
end

describe process('python ./alerter.py') do
  it { should be_running }
end

describe command('docker logs alerter') do
  its(:stdout) { should_not contain('ERROR') }
end

describe host('api.telegram.org') do
  it { should be_resolvable }
end
