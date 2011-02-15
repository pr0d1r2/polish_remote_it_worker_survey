require 'spec_helper'

describe 'demographic_questionaires/new' do

  describe 'response' do
    let(:demographic_questionaire) { DemographicQuestionaire.new }

    subject do
      assign(:demographic_questionaire, demographic_questionaire)
      render
      rendered
    end

    it { should have_tag('h1') }

    it { should have_tag('p') }

    it { should have_tag('ol > li > select', :count => 6) }

    it { should have_tag('ol > li > input') }

    it { should have_tag('form > div#next > input[type=submit]') }
  end

end

