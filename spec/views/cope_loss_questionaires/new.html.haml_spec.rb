require 'spec_helper'

describe 'cope_loss_questionaires/new' do

  describe 'response' do
    let(:cope_loss_questionaire) { CopeLossQuestionaire.new }

    subject do
      assign(:cope_loss_questionaire, cope_loss_questionaire)
      render
      rendered
    end

    it { should have_tag('h1') }

    it { should have_tag('h2', :count => 3) }

    it { should have_tag('p') }

    CopeLossQuestionaire::FIELDS.each do |field|
      it { should have_tag('form > ol > li > div', field) }
    end

    it { should have_tag('form > ol > li > span', :count => CopeLossQuestionaire::FIELDS.size*4) }

    it { should have_tag('form > ol > li > input[type=radio]', :count => CopeLossQuestionaire::FIELDS.size*4) }

    it { should have_tag('form > div#next > input[type=submit]') }
  end

end
