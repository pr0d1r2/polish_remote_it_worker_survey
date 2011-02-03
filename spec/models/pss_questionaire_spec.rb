require 'spec_helper'

describe PssQuestionaire do

  describe "FIELDS" do
    subject { PssQuestionaire::FIELDS }

    its(:size) { should == 14 }
  end

end
