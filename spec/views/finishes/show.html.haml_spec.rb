require 'spec_helper'

describe 'finishes/show' do

  describe 'response' do
    subject do
      view.stub!(:new_pss_questionaire_path => 'path')
      render
      rendered
    end

    it { should have_tag('h1') }

    it { should have_tag('p') }

    it { should have_tag('p > a') }
  end

end
