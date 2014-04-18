require 'spec_helper'

describe AccelaRestClient::Base do

  subject { AccelaRestClient::Base }
  let(:agency) { double('Agentcy') }

  describe '#initialize' do
    it 'assings the @agency instance variable' do
      subject.should_receive(:send_requiest).with(...).and_return(true)
      subject.new(agency).instance_Variable_Get('@agencey').should == agency




end


# rpec doubles
# should_receive
# and_return
# expectations