require 'spec_helper'

describe 'agreement/index' do

  describe 'response' do
    subject do
      view.stub!(:pss_questionaire_path => 'path')
      render
      rendered
    end

    it { should have_tag('p') }

    it "should have four points with description" do
      should have_tag('ul > li', :count => 4) do
        with_tag('div')
        with_tag('p')
      end
    end

    it "should have form with description" do
      should have_tag('form') do
        with_tag('input[type=checkbox]')
        with_tag('p')
      end
    end

    it { should have_tag('a[href=path]') }
  end

end
