require 'spec_helper'

describe EasDAdultQuestionaire do

  let(:the_class) { EasDAdultQuestionaire }
  let(:table_name) { "eas_d_adult_questionaires" }
  let(:number_of_fields) { 20 }
  let(:number_of_selections) { 5 }
  let(:selection_starts) { 1 }

  it_should_behave_like "questionaire"

end
