require 'spec_helper'

describe 'ssp_questionaires/new' do

  describe 'response' do
    let(:ssp_questionaire) { SspQuestionaire.new }

    subject do
      assign(:ssp_questionaire, ssp_questionaire)
      render
      rendered
    end

    it { should have_tag('h1') }

    it { should have_tag('h2') }

    it { should have_tag('p') }


    SspQuestionaire::SELECTIONS.each do |selection|
      it { should have_tag('ol > li', selection) }
    end

    SspQuestionaire::FIELDS.each do |field|
      it { should have_tag('form > ol > li > div', field) }
    end

    it { should have_tag('form > ol > li > select > option', :count => SspQuestionaire::FIELDS.size*(SspQuestionaire::SELECTIONS.size+1)) }

    it { should have_tag('form > div#next > input[type=submit]') }
  end

end
