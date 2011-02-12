require 'spec_helper'

describe 'olbi_questionaires/new' do

  describe 'response' do
    let(:olbi_questionaire) { OlbiQuestionaire.new }

    subject do
      assign(:olbi_questionaire, olbi_questionaire)
      render
      rendered
    end

    it { should have_tag('h1') }

    it { should have_tag('p') }

    OlbiQuestionaire::FIELDS.each do |field|
      it { should have_tag('form > ol > li > div', field) }
    end

    it { should have_tag('form > ol > li > select > option', :count => OlbiQuestionaire::FIELDS.size*(OlbiQuestionaire::SELECTIONS.size+1)) }

    it { should have_tag('form > div#next > input[type=submit]') }
  end

end
