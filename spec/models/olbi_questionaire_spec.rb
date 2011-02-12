require 'spec_helper'

describe OlbiQuestionaire do

  let(:the_class) { OlbiQuestionaire }
  let(:table_name) { "olbi_questionaires" }
  let(:number_of_fields) { 16 }
  let(:number_of_selections) { 4 }
  let(:selection_starts) { 1 }

  it_should_behave_like "questionaire"

end
