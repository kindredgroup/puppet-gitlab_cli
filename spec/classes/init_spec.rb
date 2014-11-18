require 'spec_helper'
describe 'gitlab_cli' do

  context 'with defaults for all parameters' do
    it { should contain_class('gitlab_cli') }
  end
end
