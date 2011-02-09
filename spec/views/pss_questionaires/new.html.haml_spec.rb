require 'spec_helper'

describe 'pss_questionaires/new' do

  describe 'response' do
    let(:pss_questionaire) { PssQuestionaire.new }

    subject do
      assign(:pss_questionaire, pss_questionaire)
      render
      rendered
    end

    it { should have_tag('h1') }

    it { should have_tag('h2') }

    it { should have_tag('p') }

    PssQuestionaire::FIELDS.each do |field|
      it { should have_tag('form > ol > li > div', field) }
    end

    it { should have_tag('form > ol > li > span', :count => PssQuestionaire::FIELDS.size*5) }

    it { should have_tag('form > ol > li > input[type=radio]', :count => PssQuestionaire::FIELDS.size*5) }

    it { should have_tag('form > div#next > input[type=submit]') }
  end

end
