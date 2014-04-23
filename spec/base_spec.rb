require 'spec_helper'

describe AccelaRestClient::Base do

  subject { AccelaRestClient::Base }
  
  let(:app_id) { 'app_id' }
  let(:app_secret) { 'app_secret' }
  let(:access_token) { 'access_token' }
  let(:environment) { 'environment' }
  let(:agency) { 'agency' }

  describe '#initialize' do

    it 'accessing the @agency instance variable' do
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

    let(:path) { 'path'}
    let(:headers) { {} }
    let(:query) { {} }
    
    it 'send_request should return true' do
      #subject.new(app_id,app_secret,access_token,environment,agency).send_request(path,headers,query)
      subject.should_receive(HTTParty::get).with(path,headers).and_return(true)
      #subject.should_receive(:get).with(path,headers,query).and_return(true)
      #subject.send_request
    end

end


# rpec doubles
# should_receive
# and_return
# expectations