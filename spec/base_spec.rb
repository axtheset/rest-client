require 'spec_helper'

describe AccelaRestClient::Base do

  subject { AccelaRestClient::Base.new(app_id,app_secret,access_token,environment,agency) }
  
  let(:app_id) { 'app_id' }
  let(:app_secret) { 'app_secret' }
  let(:access_token) { 'access_token' }
  let(:environment) { 'environment' }
  let(:agency) { 'agency' }

  describe '#initialize' do

    subject { AccelaRestClient::Base }

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

  describe '#send_request' do

    let(:path) { '/path'}
    let(:headers) { {} }
    let(:query) { {key: 'value'} }

    
    it 'send_request without a query should return true' do

      subject.should_receive(:set_authorization_headers).and_return({})
      subject.class.should_receive(:get).with(subject.class::BASE_URI + path, headers: {}).and_return(true)
      subject.send_request(path, headers)
    end

    it 'send_request with a query should return true' do
      subject.should_receive(:set_authorization_headers).and_return({})
      subject.should_receive(:escape_characters).and_return({})
      subject.class.should_receive(:get).with(subject.class::BASE_URI + path, headers: {}, query: {}).and_return(true)
      subject.send_request(path, headers, query)
    end
  end

  describe '#send_post' do

    let(:path) { '/path'}
    let(:headers) { {} }
    let(:body) { {} }

    
    it 'send_post should return true' do
      subject.should_receive(:set_authorization_headers).and_return({})
      subject.class.should_receive(:post).with(subject.class::BASE_URI + path, headers: {}, body: {}.to_json).and_return(true)
      subject.send_post(path, headers, body)
    end
  end

  describe '#set_authorization_headers' do
    
    it 'set_authorization_headers should return a hash when AccessToken' do
      subject.should_receive(:set_authorization_headers).with('AccessToken').and_return(true)
      subject.set_authorization_headers('AccessToken')
    end

    it 'set_authorization_headers should return a hash when AppCredentials' do
      subject.should_receive(:set_authorization_headers).with('AppCredentials').and_return(true)
      subject.set_authorization_headers('AppCredentials')
    end

    it 'set_authorization_headers should return a hash when NoAuth' do
      subject.should_receive(:set_authorization_headers).with('NoAuth').and_return(true)
      subject.set_authorization_headers('NoAuth')
    end
  end

  describe '#escape_characters' do
    
    subject.class::ESCAPES.each do |k,v|
      it "#{k} should translate to #{v}" do
        subject.should_receipt(:escape_characters).with(v).and_return(true)
        subject.escape_characters(k)
      end
    end  
  end

end


# rpec doubles
# should_receive
# and_return
# expectations