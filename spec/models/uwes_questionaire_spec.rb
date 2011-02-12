require 'spec_helper'

describe UwesQuestionaire do

  let(:the_class) { UwesQuestionaire }
  let(:table_name) { "uwes_questionaires" }
  let(:number_of_fields) { 17 }
  let(:number_of_selections) { 7 }
  let(:selection_starts) { 0 }

  it_should_behave_like "questionaire"

end
