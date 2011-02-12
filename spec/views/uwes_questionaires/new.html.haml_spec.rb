require 'spec_helper'

describe 'uwes_questionaires/new' do

  describe 'response' do
    let(:uwes_questionaire) { UwesQuestionaire.new }

    subject do
      assign(:uwes_questionaire, uwes_questionaire)
      render
      rendered
    end

    it { should have_tag('h1') }

    it { should have_tag('h2') }

    it { should have_tag('p') }

    UwesQuestionaire::FIELDS.each do |field|
      it { should have_tag('form > ol > li > div', field) }
    end

    it { should have_tag('form > ol > li > select > option', :count => UwesQuestionaire::FIELDS.size*(UwesQuestionaire::SELECTIONS.size+1)) }

    it { should have_tag('form > div#next > input[type=submit]') }
  end

end
