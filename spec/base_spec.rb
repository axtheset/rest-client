require 'spec_helper'

describe AccelaRestClient::Base do

  subject { AccelaRestClient::Base }
  
  let(:app_id) { double('app_id') }
  let(:app_secret) { double('app_secret') }
  let(:access_token) { double('access_token') }
  let(:environment) { double('environment') }
  let(:agency) { double('agency') }
  let(:path) { double('path')}
  let(:headers) { double('headers')}
  :headers.stub({})
  let(:query) { double('query')}
  :query.stub({})

  describe '#initialize' do
    it 'accessing the @agency instance variable' do
      ##subject.should_receive(:send_requiest).and_return(true)
      subject.new(app_id,app_secret,access_token,environment,agency).instance_variable_get('@agency').should == agency
    end
    it 'accessing the @app_id instance variable' do
      subject.new(app_id,app_secret,access_token,environment,agency).instance_variable_get('@app_id').should == app_id
    end
    it 'accessing the @app_secret instance variable' do
      subject.new(app_id,app_secret,access_token,environment,agency).instance_variable_get('@app_secret').should == app_secret
    end
    it 'accessing the @access_token instance variable' do
      subject.new(app_id,app_secret,access_token,environment,agency).instance_variable_get('@access_token').should == access_token
    end
    it 'accessing the @environment instance variable' do
      subject.new(app_id,app_secret,access_token,environment,agency).instance_variable_get('@environment').should == environment
    end
  end

  describe '#send_request'
    it 'send_request should return true' do
      subject.new(app_id,app_secret,access_token,environment,agency).send_request(path,headers,query)
      subject.should_receive(:send_request).with(path,headers,query).and_return(true)
    end
end


# rpec doubles
# should_receive
# and_return
# expectations