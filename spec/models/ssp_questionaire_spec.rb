require 'spec_helper'

describe SspQuestionaire do

  let(:the_class) { SspQuestionaire }
  let(:table_name) { "ssp_questionaires" }
  let(:number_of_fields) { 5 }
  let(:number_of_selections) { 7 }
  let(:selection_starts) { 1 }

  it_should_behave_like "questionaire"

end
