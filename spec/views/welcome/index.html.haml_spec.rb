require 'spec_helper'

describe 'welcome/index' do

  describe 'response' do
    subject do
      view.stub!(:agreement_path => 'path')
      render
      rendered
    end

    it { should have_tag('h1') }

    it { should have_tag('p#description') }

    it { should have_tag('a[href=path]') }
  end

end
