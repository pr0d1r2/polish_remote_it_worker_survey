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

    it { should have_tag('form > ol > li > select > option', :count => PssQuestionaire::FIELDS.size*(PssQuestionaire::SELECTIONS.size+1)) }

    it { should have_tag('form > div#next > input[type=submit]') }
  end

end
