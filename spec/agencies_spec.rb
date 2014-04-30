require 'spec_helper'

describe AccelaRestClient::Agencies do

  subject { AccelaRestClient::Agencies.new(app_id,app_secret,access_token,environment,agency) }

  let(:app_id) { 'app_id' }
  let(:app_secret) { 'app_secret' }
  let(:access_token) { 'access_token' }
  let(:environment) { 'environment' }
  let(:agency) { 'agency' }

 describe '#get_agencies' do
    
    it 'get_agencies should call send_request and return true' do
      subject.should_receive(:send_request).with("/v4/agencies", AccelaRestClient::Agencies::AuthTypes::ACCESS_TOKEN).and_return(true)
      subject.get_agencies
    end

  end

  describe '#get_agency' do

    let(:name) { 'agency_name' }

    it 'get_agency should call send_request and return true' do
      subject.should_receive(:send_request).with("/v4/agencies/#{name}", AccelaRestClient::Agencies::AuthTypes::ACCESS_TOKEN).and_return(true)
      subject.get_agency(name)
    end

  end

  describe '#get_agency_logo' do

    let(:name) { 'agency_name' }

    it 'get_agency_logo should call send_request and return true' do
      subject.should_receive(:send_request).with("/v4/agencies/#{name}/logo", AccelaRestClient::Agencies::AuthTypes::ACCESS_TOKEN).and_return(true)
      subject.get_agency_logo(name)
    end

  end

  describe '#get_departments' do

    it 'get_departments should call send_request and return true' do
      subject.should_receive(:send_request).with("/v4/settings/departments", AccelaRestClient::Agencies::AuthTypes::ACCESS_TOKEN).and_return(true)
      subject.get_departments
    end
  end

  describe '#get_department_staff' do
    let(:id) {7}

    it 'get_department_staff should call send_request and return true' do
      subject.should_receive(:send_request).with("/v4/settings/departments/#{id}/staffs", AccelaRestClient::Agencies::AuthTypes::ACCESS_TOKEN).and_return(true)
      subject.get_department_staff(id)
    end
  end

end
