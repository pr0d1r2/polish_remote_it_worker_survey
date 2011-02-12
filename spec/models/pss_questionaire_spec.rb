require 'spec_helper'

describe PssQuestionaire do

  let(:the_class) { PssQuestionaire }
  let(:table_name) { "pss_questionaires" }
  let(:number_of_fields) { 14 }
  let(:number_of_selections) { 5 }
  let(:selection_starts) { 0 }

  it_should_behave_like "questionaire"

end
